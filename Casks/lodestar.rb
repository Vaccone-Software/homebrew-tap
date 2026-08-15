cask "lodestar" do
  version "0.10.0"
  sha256 "244d42f8bef82e93e9975b426f7f3fa69d5d47d868f0e609968da84625e8bb4e"

  url "https://github.com/Vaccone-Software/lodestar/releases/download/v#{version}/lodestar-#{version}.zip"
  name "Lodestar"
  desc "Keyboard navigation for macOS. Destination over process."
  homepage "https://github.com/Vaccone-Software/lodestar"

  depends_on macos: :ventura
  auto_updates true

  app "lodestar.app"
  binary "#{appdir}/lodestar.app/Contents/MacOS/lodestar", target: "lodestar"

  uninstall launchctl: "com.vaccone.lodestar",
            delete:    "~/Library/LaunchAgents/com.vaccone.lodestar.plist"

  zap trash: "~/.config/lodestar"
end
