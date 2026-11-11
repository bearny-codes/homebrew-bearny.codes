cask "bearnyterm" do
  version "0.8.0"
  sha256 "7496e4adc609e42421c32975bf3224378c4d9f3091975279ad248c9cfa5430a8"

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
