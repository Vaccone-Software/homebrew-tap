cask "lodestar" do
  version "0.30.20"
  sha256 "379230f11bb6350963e4af6844562192eb8e5df1cb2cc58e6dfb0cc3bd4dd1bf"

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
