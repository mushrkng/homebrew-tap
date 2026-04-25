# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "7524946001368939eff90791a7d4342f944b8e5c11b1b4033340f3d7e75cadd6"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "4652e454c65fdf6b71b1a6c7e238e68875000043f15248d3f8e88f8deac295d7"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "4f2d1c00534a8a4d792b083d06cb7e20095fa7b79a2e432907ee0c58b6603597"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "0e46c500dd0a53e8851c25eb2cdf2a15e2068b54c874bfd7ab7b80bcceda7fbb"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
