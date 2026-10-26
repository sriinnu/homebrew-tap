cask "broom" do
  version "0.4.0"
  sha256 "21abcde77f2508d09d979bd459edf0ca8ebb8d860f82d7afb30e42e10a6683dd"

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
