cask "broom" do
  version "0.5.1"
  sha256 "e0fa23c12271e82231db2452a00bb5a48603208d4bda3fa3c29f1e936eb7c397"

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
