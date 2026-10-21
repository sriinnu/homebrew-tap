cask "llmbar" do
  version "0.3.0"
  sha256 "34fb2747929cd05b9e5036a3ab209bb071f8d625e223df343dfa81959cbc936d"

  url "https://github.com/sriinnu/llm-bar/releases/download/v#{version}/LLMBar-#{version}.zip"
  name "LLM Bar"
  desc "Every model you can reach, in the menu bar — local llama.cpp/Ollama/HF models and Claude Code cloud lanes with live health"
  homepage "https://github.com/sriinnu/llm-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "LLMBar.app"

  zap trash: [
    "~/Library/Preferences/com.sriinnu.llmbar.plist",
    "~/Library/Application Support/com.sriinnu.llmbar",
    "~/Library/Caches/com.sriinnu.llmbar",
    "~/Library/HTTPStorages/com.sriinnu.llmbar",
  ]
end
