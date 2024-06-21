cask "greenlight" do
  version "2.3.1"
  sha256 "8ee2bd65cdeeb3a5af772e5f4b5d6d47f80e48a04db3fd276fc67b70e573452b"

  url "https://github.com/unknownskl/greenlight/releases/download/v#{version}/Greenlight-#{version}-universal.dmg"
  name "Greenlight"
  homepage "https://github.com/unknownskl/greenlight"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Greenlight.app"
end
