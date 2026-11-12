cask "bearnyterm" do
  version "0.9.0"
  sha256 "47dd1cc7da87bd16efedc65d13a039ec02c0adc219e121441b761a1dacc433be"

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
