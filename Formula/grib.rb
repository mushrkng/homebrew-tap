# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "095ebba4b2c61267bdcd937dc6259c09299ce6665ac3ab1dd07dbfb1de18ce5e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "02bebc0c149ccd7f2002c0b434805ff24f073e0fb23219eff52e02459e9a6b8e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "c5bd86ca3908251b809437f5a89e6bf3dd2a57993247d61c48cbf99b0fde7c6e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "1366c99778b8ceca34bb6f196e61d1ce627593f84795471cc4ef02f315a83e17"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
