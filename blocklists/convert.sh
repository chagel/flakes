#!/bin/bash
#
# Convert AdBlock Plus filter lists to Safari Content Blocker JSON format
# using the official abp2blocklist tool.
#
# Usage: ./convert.sh
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

CONVERTER="$SCRIPT_DIR/abp2blocklist-tool/abp2blocklist.js"
MAX_RULES=50000

if [ ! -f "$CONVERTER" ]; then
  echo "Error: abp2blocklist-tool not found. Run:"
  echo "  git clone https://github.com/adblockplus/abp2blocklist.git abp2blocklist-tool"
  echo "  cd abp2blocklist-tool && npm install"
  exit 1
fi

# Function to truncate and minify JSON
truncate_and_minify() {
  local input="$1"
  local output="$2"
  python3 -c "
import json
import sys
data = json.load(open('$input'))
truncated = data[:$MAX_RULES]
json.dump(truncated, open('$output', 'w'), separators=(',', ':'))
print(f'  Rules: {len(data)} → {len(truncated)} (limit: $MAX_RULES)')
"
}

echo "Converting filter lists to Safari Content Blocker format..."
echo "WebKit limit: $MAX_RULES rules per list"
echo ""

# EasyList - Main ad blocking list
echo "Downloading and converting EasyList..."
curl -s "https://easylist.to/easylist/easylist.txt" | \
  node "$CONVERTER" > easylist_full.json
truncate_and_minify easylist_full.json easylist.json
rm easylist_full.json

# EasyPrivacy - Privacy/tracker blocking
echo "Downloading and converting EasyPrivacy..."
curl -s "https://easylist.to/easylist/easyprivacy.txt" | \
  node "$CONVERTER" > easyprivacy_full.json
truncate_and_minify easyprivacy_full.json easyprivacy.json
rm easyprivacy_full.json

echo ""
echo "Done! Files created:"
ls -lh *.json 2>/dev/null | grep -v package

echo ""
echo "Next steps:"
echo "1. git add easylist.json easyprivacy.json"
echo "2. git commit -m 'Update filter lists'"
echo "3. git push"
