cask "runic" do
  version "2.2.6"
  sha256 "38ba4fdba9d10e5107e4c9b40898897a5f4f0bba82b94a6ef03d8554815d4224"

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
