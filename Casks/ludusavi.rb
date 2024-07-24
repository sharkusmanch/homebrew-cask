cask "ludusavi" do
  version "0.24.3"
  sha256 "d09aa2aec27bfa17260a01068371eb538d3887934d2ed963a5f9115446fdf4a5"

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
