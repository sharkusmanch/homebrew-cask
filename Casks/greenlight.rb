cask 'greenlight' do
  version '2.0.1'
  sha256 'ce2be509cae08467cd246da2e438ce47bdfedb3d01a6ef9884b9486dcc220f14'

  url "https://github.com/unknownskl/greenlight/releases/download/v#{version}/Greenlight-#{version}-universal.dmg"
  name 'Greenlight'
  homepage 'https://github.com/unknownskl/greenlight'

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
  
  app 'Greenlight.app'
end
