cask "fichebar" do
  version "0.20.0"
  sha256 "8f4f66d9f1e7911fa55adfba55916f64b0ff3c1f2893eaf9879819a26c16b27b"

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
