cask "runic" do
  version "2.13.1"
  sha256 "d225c64c96dfcf1775b4b9f486affa5887578ee6cd44cf61cd6874e087e78829"

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
