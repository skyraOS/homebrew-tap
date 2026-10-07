# Skyra Homebrew tap

Official Homebrew distribution endpoint for Skyra.

The tap is being prepared. **No installable cask has been released yet.**
The first release is pending Developer ID signing, notarization and installation
verification. Do not disable Gatekeeper to install an unsigned development build.

After release:

```sh
brew tap skyraOS/tap
brew install --cask skyra
```

Downloads and release notes: https://github.com/skyraOS/skyra-releases

Initial support: Apple Silicon, macOS 14 or later. The desktop runtime is
prebuilt; installing Go or Xcode is not required for normal app startup.
Provider installation and authentication are separate. Codex support is verified
for 0.160.0; install that version with `npm install -g @openai/codex@0.160.0`,
then `codex login`. Homebrew supplies the Python runtime dependency.

Update: `brew update` and `brew upgrade --cask skyra`.
Uninstall: `brew uninstall --cask skyra`; then `brew untap skyraOS/tap` if desired.
Uninstall preserves conversations, workspaces and provider logins.

Skyra uses the Functional Source License, FSL-1.1-ALv2. This is a vendor tap,
not an endorsement or package maintained by Homebrew itself.
