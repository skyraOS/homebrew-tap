cask "skyra" do
  version "0.1.1"
  sha256 "617c8c3a8fe9f24c65155965da747061cf31e83d53dfe65e9b03da6b1ebb53b5"

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
