cask "llmbar" do
  version "0.6.0"
  sha256 "b5812220a7dcc3bcd5a01c64edbbb0e4aafcb8fc7bac80f82663e122df30acea"

  url "https://github.com/sriinnu/llm-bar/releases/download/v#{version}/LLMBar-#{version}.zip"
  name "LLM Bar"
  desc "Local models, Claude Code lanes and agent git worktrees in the menu bar"
  homepage "https://github.com/sriinnu/llm-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "LLMBar.app"

  zap trash: [
    "~/Library/Application Support/com.sriinnu.llmbar",
    "~/Library/Application Support/LLMBar",
    "~/Library/Caches/com.sriinnu.llmbar",
    "~/Library/HTTPStorages/com.sriinnu.llmbar",
    "~/Library/Preferences/com.sriinnu.llmbar.plist",
  ]
end
