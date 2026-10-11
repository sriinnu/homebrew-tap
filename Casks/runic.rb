cask "runic" do
  version "2.11.0"
  sha256 "17ee67e7d91a0aad2a1e5110cc427b9b4bb3bec87be85c191cff4bd4b55e4e81"

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
