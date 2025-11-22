# Flakes Browser v0.5.3

AI-Native Browser for Focused Thinking

## 🎉 What's New

### Features
- **Developer console with full Console API support (⌘I)**
- **Automatic Insert mode on text field focus**
- **Fullscreen API support for YouTube and video platforms**
- **Profile-isolated downloads with animation and smart indicator**

### Enhancements
- Profiles now accessible via command palette (⌘K)
- WebRTC camera/microphone permissions for video calls
- Media autoplay enabled for better video experience
- TestContext helper for easier dependency injection in tests

### Bug Fixes
- EXC_BAD_ACCESS crash in WebViewController deinit
- Allow typing '?' in Insert mode
- Prevent iframe navigations from affecting parent tab in popup proxies
- Main actor isolation warnings in WebViewController
- Test failures with singleton isolation and @Observable memory management

## 📥 Installation

1. Download `Flakes-v0.5.3-macOS.zip`
2. Unzip and drag **Flakes.app** to your Applications folder
3. Launch Flakes Browser

**Note**: On first launch, macOS may show a security warning. Right-click the app and select "Open" to bypass Gatekeeper.

## 📋 Full Changelog

See [changelog.json](https://github.com/chagel/flakes/blob/main/src/Flakes/Resources/changelog.json)

## 🔒 System Requirements

- macOS 13.0 (Ventura) or later
- Apple Silicon (M1/M2/M3) or Intel

## 💬 Feedback

- Report issues: [GitHub Issues](https://github.com/chagel/flakes/issues)
- Feedback on 𝕏: [@chagel](https://x.com/chagel)
