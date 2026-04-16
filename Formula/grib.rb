# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "b75394251aad7721ecb45cca08af49565cb027750c83eaf4d29dfc5562448525"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "16b5c8e1524c4c27b4aba2b5b39709859b72071a0fc861aa3bbe00827b0fe94f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "3bad2764a0a5b3a141252367613d3d3ee2628ac503057891bcef3f0cc1f7caf0"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "585eadaa0212f92b9e6cef52740dd99ebeae17bf62bb0da5b6cefe276ace361c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
