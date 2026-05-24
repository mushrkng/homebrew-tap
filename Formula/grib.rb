# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "45e73f37402a6a11e9f9f563b54c359564fb91d18fe0128437670fe007ca7706"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1c3676e0e0923e6796227a2568c4ce76739027d46c34b56223a05f707a806daa"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "856f0c9d4a1934bc0efdfde0eb41ca1e0e48182baa7aacae3ad382be7a06c3d1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "573bab2bd9315e1040b1b7ea233c8bdc0fe3794de43db697d0192427c0c99233"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
