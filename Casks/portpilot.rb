cask "portpilot" do
  version "3.6.0"
  sha256 "3c7bcf4211cc75f9a2676ebb37a9aca43e222ae225390e93f7d4a279250018d9"

  url "https://github.com/sriinnu/portpilot/releases/download/v#{version}/PortPilot-macOS-app.zip"
  name "PortPilot"
  desc "Menu bar port manager — kill, proxy, and schedule with cron control"
  homepage "https://github.com/sriinnu/portpilot"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PortPilot.app"

  zap trash: [
    "~/Library/Application Support/PortPilot",
    "~/Library/Caches/com.portpilot.app",
    "~/Library/HTTPStorages/com.portpilot.app",
    "~/Library/Preferences/com.portpilot.app.plist",
  ]
end
