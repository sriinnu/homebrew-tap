cask "tokmeterbar" do
  version "1.19.1"
  sha256 "accad69381005ece19e5e859bd42b55469fcec5eb13644e5991d4583e52a586b"

  url "https://github.com/sriinnu/tokmeter/releases/download/v#{version}/TokmeterBar-#{version}.zip"
  name "TokmeterBar"
  desc "Menu-bar token usage tracker for AI coding agents (Claude Code, Codex, Gemini, +13 more)"
  homepage "https://github.com/sriinnu/tokmeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "TokmeterBar.app"

  zap trash: [
    "~/Library/Preferences/com.sriinnu.tokmeterbar.plist",
    "~/Library/Application Support/com.sriinnu.tokmeterbar",
    "~/Library/Caches/com.sriinnu.tokmeterbar",
    "~/Library/HTTPStorages/com.sriinnu.tokmeterbar",
  ]
end
