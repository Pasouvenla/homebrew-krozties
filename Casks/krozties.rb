cask "krozties" do
  version "0.12.0"
  sha256 "9da3318a88010655a73237b8448f2f26437086e2fa96ff41c995525d07cfbf1f"

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
