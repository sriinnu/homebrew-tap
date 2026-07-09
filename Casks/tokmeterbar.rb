cask "tokmeterbar" do
  version "1.8.0"
  sha256 "bf5fa2474d5c349c730c719286ef0a2d871b8bd813fc849edb45255a5a36d40f"

  url "https://github.com/sriinnu/tokmeter/releases/download/v#{version}/TokmeterBar-#{version}.zip"
  name "TokmeterBar"
  desc "Menu-bar token usage tracker for AI coding agents (Claude Code, Codex, Gemini, +13 more)"
  homepage "https://github.com/sriinnu/tokmeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TokmeterBar.app"

  zap trash: [
    "~/Library/Preferences/com.sriinnu.tokmeterbar.plist",
    "~/Library/Application Support/com.sriinnu.tokmeterbar",
    "~/Library/Caches/com.sriinnu.tokmeterbar",
    "~/Library/HTTPStorages/com.sriinnu.tokmeterbar",
  ]
end
