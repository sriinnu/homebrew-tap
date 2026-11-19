cask "tokmeterbar" do
  version "1.23.1"
  sha256 "6bfeda4f474cc2f493428ca1c7a79642c0845e5fc188577fac61f7c65991e7ee"

  url "https://github.com/sriinnu/tokmeter/releases/download/v#{version}/TokmeterBar-#{version}.zip"
  name "TokmeterBar"
  desc "Menu-bar token usage tracker for AI coding agents (Claude Code, Codex, Gemini, +21 more)"
  homepage "https://github.com/sriinnu/tokmeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "TokmeterBar.app"

  zap trash: [
    "~/Library/Preferences/com.sriinnu.tokmeterbar.plist",
    "~/Library/Application Support/com.sriinnu.tokmeterbar",
    "~/Library/Caches/com.sriinnu.tokmeterbar",
    "~/Library/HTTPStorages/com.sriinnu.tokmeterbar",
  ]
end
