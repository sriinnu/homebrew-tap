cask "tokmeterbar" do
  version "1.13.0"
  sha256 "720e73a1b1dd70cae6bb5e686f8a4b9895dd39cf068b0485bdf059b618f8e4db"

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
