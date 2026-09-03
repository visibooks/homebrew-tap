cask "visibooks" do
  version "0.2.1"
  sha256 "b583610830a68844d32d516e0a1c4f85c3d2df048b0f89308852cb1a939f61ca"

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
