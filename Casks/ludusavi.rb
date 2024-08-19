cask "ludusavi" do
  version "0.25.0"
  sha256 "e7f4a527f32434ef889a4a9a702979c5a569edde1a4c25f04fb07e23d290e208"

  url "https://github.com/mtkennerly/ludusavi/releases/download/v#{version}/ludusavi-v#{version}-mac.zip"
  name "ludusavi"
  desc "Tool for backing up your video game save data"
  homepage "https://github.com/mtkennerly/ludusavi"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ludusavi"

  zap trash: "~/.config/ludusavi"
end
