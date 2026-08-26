cask "visibooks" do
  version "0.2.0"
  sha256 "87eae0747b744f6ca58cfba0fa7f1f93f5aaca0d3af0a01e53a5e4f717a4f081"

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
