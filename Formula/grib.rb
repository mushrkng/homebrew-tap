# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "901894bc6a22627bfd2b108e815f5ef76f23600bd92d22eccbd3498d4d690d3c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "9eff838ba29748c672484201cda0826a945a1e2ac856ee7563bce3beead0f092"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "a677c6a247ad2d8379a2741e2cb9c53761fcc9428a213daf7acf9c490833401d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "2278e4c4a0586e43f84c0129b5965b6f5b8ede6cf3c46d0c445ed650f94b1a2b"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
