cask "skyra" do
  version "0.1.0"
  sha256 "1962fd2b6e8920460d7af7b20b8c8c0514c1ecfb468399411903e4ff1ace66a6"

  url "https://github.com/skyraOS/skyra-releases/releases/download/v#{version}/Skyra-#{version}-macos-arm64.zip"
  name "Skyra"
  desc "Agents with recorded execution and OS-enforced boundaries"
  homepage "https://github.com/skyraOS/skyra-releases"

  depends_on arch: :arm64
  depends_on formula: "python@3.13"
  depends_on macos: :sonoma

  app "Skyra.app"
  binary "#{appdir}/Skyra.app/Contents/Resources/skyra/skyra"

  caveats <<~EOS
    This release is not signed by an Apple Developer ID or notarized.
    macOS may block first launch; review it in System Settings > Privacy & Security.
    Skyra requires a separately installed, authenticated provider.
    Codex isolation is currently verified for version 0.160.0.
    Install that version with npm install -g @openai/codex@0.160.0 and run codex login.
    Other provider versions must be validated before use.
    Desktop observation additionally needs CuaDriver 0.34.0 and its macOS permissions.
    Conversations and credentials are not removed during uninstall.
  EOS
end
