cask "lodestar" do
  version "0.9.1"
  sha256 "c7c180f1b2f4f6132a398f373533f2fb485a63c0c989820d64415d7f9a3d015a"

  url "https://github.com/Vaccone-Software/lodestar/releases/download/v#{version}/lodestar-#{version}.zip"
  name "Lodestar"
  desc "Keyboard navigation for macOS. Destination over process."
  homepage "https://github.com/Vaccone-Software/lodestar"

  depends_on macos: :ventura

  app "lodestar.app"
  binary "#{appdir}/lodestar.app/Contents/MacOS/lodestar", target: "lodestar"

  uninstall launchctl: "com.vaccone.lodestar",
            delete:    "~/Library/LaunchAgents/com.vaccone.lodestar.plist"

  zap trash: "~/.config/lodestar"
end
