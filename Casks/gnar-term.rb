cask "gnar-term" do
  version "0.2.3"

  if Hardware::CPU.arm?
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_aarch64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  else
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_x64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
