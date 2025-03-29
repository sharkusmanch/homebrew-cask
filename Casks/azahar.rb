cask "azahar" do
  version "2120.1"
  sha256 "1bf1f23ba8033dd035c4dbe7209e7be887bd20c92b61263c951060463a2d2dc1"

  url "https://github.com/azahar-emu/azahar/releases/download/#{version}/azahar-#{version}-macos-universal.zip"
  name "azahar"
  desc "An open-source 3DS emulator project based on Citra."
  homepage "https://github.com/Lime3DS/Lime3DS"

  livecheck do
    url :url
    regex(/^?(\d+)$/i)
  end

  app "azahar-#{version}-macos-universal/lime3ds-gui.app", target: "Azahar.app"

  zap trash: "~/Library/Application Support/Azahar"
end
