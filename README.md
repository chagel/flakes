# Flakes Browser

A keyboard-first AI browser that thinks with you. Built native on macOS using WebKit for speed and efficiency.

> **"A browser designed for thinking, not scrolling."**

Flakes reimagines browsing from **Search → Click → Scroll → Forget** to **Intent → Read → Reflect → Act**.

**Core Principles**:
- **AI-Native**: AI understands context, not just queries
- **Keyboard-First**: Mouse optional, keyboard is language
- **Speed as Philosophy**: Native performance, instant response
- **Your Flow is Sacred**: Extends focus, never steals it

## What Works Today

**The Basics**
- Tab management with vim-style navigation
- Command palette (⌘K) for everything
- Multiple profiles with complete isolation
- Session persistence
- Profile-isolated downloads

**For Hackers**
- Multiple modes for maximum keyboard efficiency
- Vim navigation mode (h/j/k/l, g/G, hint mode)
- Developer console (⌘I) with full Console API
- Built on WebKit (fast, light, native)

**Modern Web**
- WebRTC for video calls
- Fullscreen API support
- Service Workers, IndexedDB
- 96.9% compatibility with major sites

## Why WebKit?

Because I'd rather build features than maintain a browser engine. WKWebView gives me:
- Cold start < 500ms
- Tab switching < 50ms
- Native macOS integration
- Solo developer-friendly
- Zero bloat

## The Vision (What's Coming)

**Task Flows**: Better understanding user intent over single queries. E.g., "research topic X", "plan trip to Y", "compare products A, B, C".

**No Address Bar**: Don't make me think about URLs. Just let me search, navigate, and act.

**No Tabs**: Web should be more human-friendly. More immersive experience, less tab-juggling.


## Download

[Latest Release (v0.5.3)](https://github.com/chagel/flakes/releases/latest)

**Requirements**: macOS 13.0+, works on Apple Silicon and Intel

1. Download and unzip
2. Drag to Applications
3. Right-click → Open (first launch only)
4. Press ⌘K and start typing

## Quick Reference

| Action | Shortcut |
|--------|----------|
| Show Shortcuts | ? |
| Command Center | ⌘ + K |
| Go Home | ⌘ + G |
| Edit URL | ⌘ + O |
| Focus Mode | ⌘ + Enter |
| Read/Edit Mode | ESC / I |
| Link hints | F |

## Feedback Welcome

This is very much a work in progress. I'm building it because I need it, but I'd love to hear if it helps you too.

- Report bugs: [GitHub Issues](https://github.com/chagel/flakes/issues)
- Share ideas: [GitHub Discussions](https://github.com/chagel/flakes/discussions)
- Quick feedback: [@chagel](https://x.com/chagel) on 𝕏

## Roadmap

Current focus: Smart AI (Dec 2025), split-view, cloud sync.

## License

MIT - see [LICENSE](LICENSE)

---

**Built for people who think with keyboards.**
