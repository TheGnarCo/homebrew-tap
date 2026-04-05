cask "gnar-term" do
  version "0.3.0"

  if Hardware::CPU.arm?
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_aarch64.dmg"
    sha256 "9cb0bb65a6bed6fb5d858763466bfd9f2f45cb882761032e9f32c3a53d3664e6"
  else
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_x64.dmg"
    sha256 "aa5ff644cb7b608d408684cdae3198e2dcdb39ab89a9c8138cb63d8d284d8382"
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
