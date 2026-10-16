cask "krozties" do
  version "0.13.1"
  sha256 "37029060e7eebf68a8236851ee562d579febb0355f81f22b15d8c45bdffb16a1"

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
