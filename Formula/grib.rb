# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "4b25bd5a4340ddf08775f96e5017f14f0e917b2100539c0fc18d38f10e9fd6d4"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a38a6770507f594b79d0c8bdd58dbf1524e003074650eab9185aff07ff9467fc"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "fd1a748f27d6beedf379619edb5cee18e326581ca17eb88e06cefcd55d20a4a7"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "2d603dc80d361a4d4cb22c3125e5238a99af901a93a8731ced048096b0e1dd13"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
