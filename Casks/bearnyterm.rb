cask "bearnyterm" do
  version "0.10.0"
  sha256 "2c6dbdeb3b0374788aef010c27ab51f36cab923402f67ffd59493ecde0399173"

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
