cask "ardia@nightly" do
  version "0.2.43-nightly.7"
  sha256 "0abbe7b2f36a256a97563469eb2b0c2ddf956f36b160c2abe62212fa2337ec75"

  url "https://github.com/mantrakp04/ardia/releases/download/v#{version}/Ardia-#{version}.dmg"
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
