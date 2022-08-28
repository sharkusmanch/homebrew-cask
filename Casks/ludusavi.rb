cask "ludusavi" do
  version "0.11.0"
  sha256 "cb5bfdf3226e6a141785f80cc39dbde89ce469612e21a82421386448495f8e61"

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
