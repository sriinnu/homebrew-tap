cask "mimo" do
  version "1.0.2"
  sha256 "dcf915270cad4fed014ad1b3be671005544432dd31606cde5316716785896c7b"

  url "https://github.com/sriinnu/Mimo/releases/download/v#{version}/Mimo-v#{version}.dmg"
  name "Mimo"
  desc "macOS menu-bar git identity switcher with a mascot"
  homepage "https://github.com/sriinnu/Mimo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mimo.app"

  zap trash: [
    "~/.config/mimo",
    "~/Library/Preferences/com.sriinnu.Mimo.plist",
    "~/Library/Application Support/com.sriinnu.Mimo",
    "~/Library/Caches/com.sriinnu.Mimo",
    "~/Library/HTTPStorages/com.sriinnu.Mimo",
  ]
end
