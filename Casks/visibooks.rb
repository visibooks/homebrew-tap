cask "visibooks" do
  version "0.5.0"
  sha256 "eaa81acc72373ef7b980c3d1195dff2289c60a65a4cc3c6e5a531047a1cbe1bd"

  url "https://github.com/visibooks/visibooks-releases/releases/download/v#{version}/VisiBooks-macOS-universal.dmg"
  name "VisiBooks"
  desc "Native accounting workbench"
  homepage "https://visibooks.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "VisiBooks.app"

  zap trash: [
    "~/.config/visibooks",
    "~/Library/Application Support/com.visibooks.app",
    "~/Library/Caches/com.visibooks.app",
    "~/Library/Preferences/com.visibooks.app.plist",
    "~/Library/Saved Application State/com.visibooks.app.savedState",
  ]
end
