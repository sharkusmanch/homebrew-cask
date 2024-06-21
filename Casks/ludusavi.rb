cask "ludusavi" do
  version "0.24.1"
  sha256 "842159a895740efc13192cecef822ecaa536d245b0457a5771de92cbbce4db94"

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
