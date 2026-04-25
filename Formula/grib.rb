# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "00400b65f0f4f58ac131c7ac2812142d3a344a853b3566ba6cf2e368054d2e5b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "dbe4da33f27972b3de416adbbc47e23f658882d1a96d95766c9c1f14099a1f42"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "e14c8dfadd89dd91fc9f780bcb808bed932cb68288985fd451e89f7cc09b3318"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "b68160de32c9342503bb6df0448ce0ddc33aac50370b3af4df9aa05d011eb339"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
