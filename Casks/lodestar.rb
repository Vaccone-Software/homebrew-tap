cask "lodestar" do
  version "0.15.0"
  sha256 "18fdc0c4047da9761732289a6c7890b54d0390fb0c9b7ea9889485bc3eb2fbb1"

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
