cask "lime3ds" do
  version "2117"
  sha256 "fb72d625b2a3111a63078a8ea6eb92eb705c634924f600f45f874389a1c1eefc"

  url "https://github.com/Lime3DS/Lime3DS/releases/download/#{version}/lime3ds-#{version}-macos-universal.tar.gz"
  name "lime3ds"
  desc "Nintendo 3DS emulator based on Citra"
  homepage "https://github.com/Lime3DS/Lime3DS"

  livecheck do
    url :url
    regex(/^?(\d+)$/i)
  end

  app "lime3ds-#{version}-macos-universal/lime3ds-gui.app", target: "Lime3DS.app"

  zap trash: "~/Library/Application Support/Lime3DS"
end
