cask "visibooks" do
  version "0.4.0"
  sha256 "948ecc6d20f2704e05c65fc2a6416696220a4792ee36cbe1d344b74544d8169c"

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
