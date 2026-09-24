cask "visibooks" do
  version "0.3.0"
  sha256 "dc5b8a760b10261ecbd31f5c2c5c1187fd660fd4388b668176cb36e4e0645081"

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
