cask "broom" do
  version "0.6.0"
  sha256 "28d7c00872e5e6bed5fc1878d85d57abae6dd02a8e5c7b927039de1d3fe650ec"

  url "https://github.com/sriinnu/broom/releases/download/v#{version}/Broom-#{version}.dmg"
  name "Broom"
  desc "Disk-space explorer with a live sunburst and menu-bar search-and-clean"
  homepage "https://github.com/sriinnu/broom"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Broom.app"
  binary "#{appdir}/Broom.app/Contents/MacOS/broom"

  zap trash: [
    "~/Library/Application Support/Broom",
    "~/Library/Caches/com.sriinnu.broom",
    "~/Library/HTTPStorages/com.sriinnu.broom",
    "~/Library/Preferences/com.sriinnu.broom.plist",
    "~/Library/Saved Application State/com.sriinnu.broom.savedState",
  ]
end
