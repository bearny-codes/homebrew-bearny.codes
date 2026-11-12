cask "bearnyterm" do
  version "0.9.0"
  sha256 "a859c73b4ac42132c2f238169774139487c3a829737699f466d90955e87484ef"

  url "https://github.com/bearny-codes/homebrew-bearny.codes/releases/download/v#{version}/BearnyTerm.dmg"
  name "BearnyTerm"
  desc "Native macOS terminal with an integrated AI agent"
  homepage "https://github.com/bearny-codes/homebrew-bearny.codes"

  depends_on macos: :sequoia

  app "BearnyTerm.app"

  zap trash: [
    "~/Library/Application Support/BearnyTerm",
    "~/Library/Caches/codes.bearny.terminal",
    "~/Library/Logs/BearnyTerm",
    "~/Library/Preferences/codes.bearny.terminal.plist",
  ]
end
