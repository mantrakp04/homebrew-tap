cask "ardia@nightly" do
  version "0.2.41-nightly.1"
  sha256 "cd1a71dcaf69986bf3fd3d0915c4b8e8f443235b999ddaa89648a8fb2f8e5593"

  url "https://github.com/mantrakp04/ardia/releases/download/v#{version}/Ardia-#{version}.dmg",
      verified: "github.com/mantrakp04/ardia/"
  name "Ardia Nightly"
  desc "Web browser with Arc's sidebar and Dia's polish"
  homepage "https://ardia.dev/nightly"

  livecheck do
    url "https://github.com/mantrakp04/ardia.git"
    regex(/^v?(\d+(?:\.\d+)+-nightly\.\d+)$/i)
  end

  auto_updates true
  conflicts_with cask: "ardia"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ardia.app"

  zap trash: [
    "~/Library/Application Support/Ardia",
    "~/Library/Application Support/com.ardia.browser",
    "~/Library/Caches/com.ardia.browser",
    "~/Library/HTTPStorages/com.ardia.browser",
    "~/Library/HTTPStorages/com.ardia.browser.binarycookies",
    "~/Library/Preferences/com.ardia.browser.plist",
    "~/Library/Saved Application State/com.ardia.browser.savedState",
  ]
end
