cask "gnar-term" do
  version "0.3.3"

  if Hardware::CPU.arm?
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_aarch64.dmg"
    sha256 "70c863e2a06f30db9b675602cef35bbc6c1b464207f662657d6ccb5661f3af12"
  else
    url "https://github.com/TheGnarCo/gnar-term/releases/download/v#{version}/GnarTerm_#{version}_x64.dmg"
    sha256 "6f74f0cdd5746ed65579e895720af371a4165dcb08f34e495e5edafb02a479aa"
  end

  name "GnarTerm"
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/TheGnarCo/gnar-term"

  app "GnarTerm.app"
  binary "#{appdir}/GnarTerm.app/Contents/MacOS/gnar-term"

  zap trash: [
    "~/Library/Caches/com.thegnar.gnar-term",
    "~/Library/Preferences/com.thegnar.gnar-term.plist",
    "~/Library/Saved Application State/com.thegnar.gnar-term.savedState",
    "~/.config/gnar-term",
  ]
end
