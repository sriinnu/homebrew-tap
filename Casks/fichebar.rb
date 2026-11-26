cask "fichebar" do
  version "0.19.0"
  sha256 "9f1c8cd78d8ba9c15e9f406e865c90448caa66f84f76e87e9304af096929f3cf"

  url "https://github.com/sriinnu/fiche/releases/download/v#{version}/FicheBar-#{version}.zip"
  name "FicheBar"
  desc "Menu-bar companion and proxy controller for Fiche context compiler"
  homepage "https://github.com/sriinnu/fiche"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "FicheBar.app"

  uninstall quit: "dev.srinivas.fichebar"

  zap trash: [
    "~/Library/Application Support/dev.srinivas.fichebar",
    "~/Library/Caches/dev.srinivas.fichebar",
    "~/Library/HTTPStorages/dev.srinivas.fichebar",
    "~/Library/Preferences/dev.srinivas.fichebar.plist",
    "~/Library/Saved Application State/dev.srinivas.fichebar.savedState",
  ]
end
