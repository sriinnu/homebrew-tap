cask "portpilot" do
  version "3.1.0"
  sha256 "f1e7d9cd7b8517dda380e42d272cfc4c7afd2f23d70285b2b7e483afb04f2b2b"

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
