cask "gnar-term" do
  version "0.2.3"

  if Hardware::CPU.arm?
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_aarch64.dmg"
    sha256 "324a18cfd1e3f7b9195e8c2aa4bdff014c3ca3357fced2e956712d72f9c31d1a"
  else
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_x64.dmg"
    sha256 "c22d170295fe00742732891e44350462951d2eba5e1c3601d21b23c768b62fe2"
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
