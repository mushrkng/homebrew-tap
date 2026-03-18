# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5da9750388d1b9ebfbd2602add3c9cf79387b8e2d0d3fdcac839bcb448fb7d13"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "beac84904668a37ac9a76a000b626cd683f2dca0677eea41b51b2ff2db56f2aa"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "7b1b43cc0fd0e4abab8976046542e3f473443fe9f6f42d95c5c773c7aebc65f1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "3563f1c0886eecc7b3fc6bc81cefa4de97b6e05623eaf837f853edeb1808b150"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
