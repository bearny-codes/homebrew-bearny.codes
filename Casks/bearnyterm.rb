cask "bearnyterm" do
  version "0.9.0"
  sha256 "e984bfd5d9d758c324c7822134d402b9d6c8ffc1ce0c0e03aaaeab7cfdb7f694"

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
