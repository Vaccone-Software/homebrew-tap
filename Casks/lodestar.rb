cask "lodestar" do
  version "0.42.0"
  sha256 "97535b62665ded4e1d55b67c485e16f3a9f35bb4aa3260dd68b82c4c630bcf47"

  url "https://github.com/Vaccone-Software/lodestar/releases/download/v#{version}/lodestar-#{version}.zip"
  name "Lodestar"
  desc "Keyboard navigation for macOS. Destination over process."
  homepage "https://github.com/Vaccone-Software/lodestar"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  auto_updates true

  app "lodestar.app"
  binary "#{appdir}/lodestar.app/Contents/MacOS/lodestar", target: "lodestar"

  uninstall launchctl: "com.vaccone.lodestar",
            delete:    "~/Library/LaunchAgents/com.vaccone.lodestar.plist"

  zap trash: "~/.config/lodestar"
end
