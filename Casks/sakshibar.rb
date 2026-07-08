cask "sakshibar" do
  version "0.1.0"
  sha256 "dfa0c2cdcc958813f17c3cde66d701f57472eb7b7ad21be2b656cc8feef3a2c6"

  url "https://github.com/sriinnu/local-models-bar/releases/download/v#{version}/SakshiBar-#{version}.zip"
  name "SakshiBar"
  desc "Menu-bar witness for your local LLMs — llama.cpp, Ollama, and Hugging Face cache in one place"
  homepage "https://github.com/sriinnu/local-models-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "SakshiBar.app"

  zap trash: [
    "~/Library/Preferences/com.sriinnu.sakshibar.plist",
    "~/Library/Application Support/com.sriinnu.sakshibar",
    "~/Library/Caches/com.sriinnu.sakshibar",
    "~/Library/HTTPStorages/com.sriinnu.sakshibar",
  ]
end
