cask "ardia" do
  version "0.2.40"
  sha256 "bfbe50828d82befb6a6b933c94f7ad20fb826099ed37085480bea853e6508a60"

  url "https://github.com/mantrakp04/ardia/releases/download/v#{version}/Ardia-#{version}.dmg"
  name "Ardia"
  desc "Web browser with Arc's sidebar and Dia's polish"
  homepage "https://ardia.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "ardia@nightly"
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
