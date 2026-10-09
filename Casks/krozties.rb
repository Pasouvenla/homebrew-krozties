cask "krozties" do
  version "0.2.1"
  sha256 "bb8ec6bc3f13a71165b64c667d5df830849c0e0200db7fe91bc0e1452332a208"

  url "https://github.com/Pasouvenla/krozties/releases/download/v#{version}/Krozties_universal.dmg"
  name "Krozties"
  desc "Rotation de sorts la plus forte d'un personnage de Dofus 3"
  homepage "https://github.com/Pasouvenla/krozties"

  livecheck do
    url :url
    strategy :github_latest
  end

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
