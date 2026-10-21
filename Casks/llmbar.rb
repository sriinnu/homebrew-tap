cask "llmbar" do
  version "0.4.0"
  sha256 "e70b97d62817863337688d9a33336a191508d7b98a346572eedf88c120d093ea"

  url "https://github.com/sriinnu/llm-bar/releases/download/v#{version}/LLMBar-#{version}.zip"
  name "LLM Bar"
  desc "Every model you can reach, in the menu bar — local llama.cpp/Ollama/HF models and Claude Code cloud lanes with live health"
  homepage "https://github.com/sriinnu/llm-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "LLMBar.app"

  zap trash: [
    "~/Library/Preferences/com.sriinnu.llmbar.plist",
    "~/Library/Application Support/com.sriinnu.llmbar",
    "~/Library/Caches/com.sriinnu.llmbar",
    "~/Library/HTTPStorages/com.sriinnu.llmbar",
  ]
end
