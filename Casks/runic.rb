cask "runic" do
  version "2.7.2"
  sha256 "65ef6c0898971892872bace45cc9cec842333e64063592788b7df9686dbf0891"

  url "https://github.com/sriinnu/Runic/releases/download/v#{version}/Runic-#{version}.zip"
  name "Runic"
  desc "Local-first AI usage visibility for macOS"
  homepage "https://github.com/sriinnu/Runic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Runic.app"

  zap trash: [
    "~/.config/runic",
    "~/Library/Preferences/com.sriinnu.athena.runic.plist",
    "~/Library/Application Support/com.sriinnu.athena.runic",
    "~/Library/Caches/com.sriinnu.athena.runic",
    "~/Library/HTTPStorages/com.sriinnu.athena.runic",
  ]
end
