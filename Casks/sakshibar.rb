cask "sakshibar" do
  version "0.2.0"
  sha256 "e037d0753f8d4a8105c16841b990c56aa2c3061830084b205a0fec9d72028c18"

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
