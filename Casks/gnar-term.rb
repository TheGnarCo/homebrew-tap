cask "gnar-term" do
  version "0.3.2"

  if Hardware::CPU.arm?
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_aarch64.dmg"
    sha256 "0b3180e3ca13562d9263ffb0e9140eac90bb05c2c8c50e0791321b0aa2964085"
  else
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_x64.dmg"
    sha256 "d35229d42e110d5ab4d7863512b45991d502583cb0a261992fdf609f6335c56c"
  end

  name "GnarTerm"
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/TheGnarCo/gnar-term"

  app "GnarTerm.app"

  zap trash: [
    "~/Library/Caches/com.thegnar.gnar-term",
    "~/Library/Preferences/com.thegnar.gnar-term.plist",
    "~/Library/Saved Application State/com.thegnar.gnar-term.savedState",
    "~/.config/gnar-term",
  ]
end
