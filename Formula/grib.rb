# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "03983f1024a1f47063bda07f5690327106e044799cc19ab65f2bafbdefd9178e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "98219d10abdb275b0650839903a617c41ac915725b46aa099ff0aba55477ee23"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "cef0b8c1c4ff81132a5205039697f633bc21aa9d05cb5b1ec2c6fbd89f6bfe1b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "5a7b24d5d17fba0f35da55a7859296ffdf96ec74605b4ab435939a5fd34b1fc7"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
