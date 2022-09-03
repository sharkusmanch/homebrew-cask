cask "ludusavi" do
  version "0.12.1"
  sha256 "753abf300a17b516eff70254cf77ab89cc4485df26d2d5af9aa9bdfb7e72a45d"

  url "https://github.com/mtkennerly/ludusavi/releases/download/v#{version}/ludusavi-v#{version}-mac.zip"
  name "ludusavi"
  desc "Tool for backing up your video game save data"
  homepage "https://github.com/mtkennerly/ludusavi"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ludusavi"

  zap trash: [
    "~/.config/ludusavi",
  ]
end
