cask "krozties" do
  version "0.15.2"
  sha256 "bc83c156f701d43b25902cc2186c93c84d13d639df258207df47124a018e1369"

  url "https://github.com/Pasouvenla/krozties/releases/download/v#{version}/Krozties_#{version}_universal.dmg"
  name "Krozties"
  desc "Rotation de sorts la plus forte d'un personnage de Dofus 3"
  homepage "https://github.com/Pasouvenla/krozties"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Krozties.app"

  zap trash: [
    "~/Library/Application Support/io.github.pasouvenla.krozties",
    "~/Library/Caches/io.github.pasouvenla.krozties",
    "~/Library/Saved Application State/io.github.pasouvenla.krozties.savedState",
    "~/Library/WebKit/io.github.pasouvenla.krozties",
  ]

  caveats <<~EOS
    Krozties n'est pas signé par Apple : au premier lancement, ouvrez Réglages
    Système, Confidentialité et sécurité, puis cliquez sur « Ouvrir quand même ».
  EOS
end
