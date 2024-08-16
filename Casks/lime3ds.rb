cask "lime3ds" do
  version "2116"
  sha256 "a406ae3df6ca7408d7f56597969af68d6cd31f3d41dfc49e887c4ce79030e137"

  url "https://github.com/Lime3DS/Lime3DS/releases/download/#{version}/lime3ds-#{version}-macos-universal.tar.gz"
  name "lime3ds"
  desc "A Nintendo 3DS emulator based on Citra"
  homepage "https://github.com/Lime3DS/Lime3DS"

  livecheck do
    url :url
    regex(/^?(\d+)$/i)
  end

  zap trash: [
    "~/Library/Application Support/Lime3DS"
  ]

  app "lime3ds-#{version}-macos-universal/lime3ds-gui.app", target: "Lime3DS.app"
end
