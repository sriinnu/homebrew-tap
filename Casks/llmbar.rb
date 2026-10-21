cask "llmbar" do
  version "0.5.0"
  sha256 "cb5aac9b0ba8099fbeab1d22da0ea7082ccb13b5e7b1b4b2727212e7c6682059"

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
