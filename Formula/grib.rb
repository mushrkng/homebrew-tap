# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "54c04d08651708200218204bb416556c6166fd7f583abd8c03ff12e85d641549"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "6626208a422433a94714b949e2cf98150cb28189def6bc8ee9b0f4660cfbb1d3"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "a0e7269f2f30a68440f46f4bbabd09896e36d977192ecf9b38682f723a4715c5"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "28f0d7dc100b2b4a8d4ba6914861dd8cfd332d9d19f98362cc3d966e9773f8da"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
