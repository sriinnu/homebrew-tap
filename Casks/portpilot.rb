cask "portpilot" do
  version "3.5.8"
  sha256 "84c936b880131b802c2eb57778d3a3b36d3a239f1b6662b7999c28133cdfe565"

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
