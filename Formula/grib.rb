# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "ed05e617918259a5cf48642fb31f4abd3c77fc64c25ab65bdf3113b0f19a01e5"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "18140704bb756437f7addceb71be772dc07ec0631808c1e06e927e20e3a17383"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "94b08778abca013cbaa50d351c77d90d1e6fe76df6de129405170208a876596a"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "624e3445e3ffddcfe064f9ce37bdb0d12319cf7b035c82079310be4befb13250"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
