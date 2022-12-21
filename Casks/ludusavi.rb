cask "ludusavi" do
  version "0.15.2"
  sha256 "caf4e8e22d87db633d967df1a4a61fa60ad25183434a9ee16c1338af644c4065"

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
