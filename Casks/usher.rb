cask "usher" do
  version "0.3.0"
  sha256 "248d074df7d6f5bffece959e410fbb0dd4157804e5cb4e54f3731543b1434595"

  url "https://github.com/sriinnu/usher/releases/download/v#{version}/Usher-#{version}.zip"
  name "Usher"
  desc "Menubar app that files your downloads into the folders you already keep"
  homepage "https://github.com/sriinnu/usher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Usher.app"

  # Application Support holds the encrypted journal — the undo history and
  # the calibration record. Only removed on `brew uninstall --zap`.
  zap trash: [
    "~/Library/Application Support/Usher",
    "~/Library/HTTPStorages/com.sriinnu.usher",
    "~/Library/Preferences/com.sriinnu.usher.plist",
  ]
end
