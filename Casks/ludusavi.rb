cask "ludusavi" do
  version "0.15.0"
  sha256 "8671d484aad15989b95a1cc983499f66aec3529e4f09aaa9dbbe1b9f3ea071f7"

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
