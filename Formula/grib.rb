# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f2fd40b3b0b82efd0c528108e38e694e1f2313dd63dd73ccabb833001a424e23"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "9aa849b8759f3d8ed4c66d4c172a24d0a11dfa21ff10864e69480522a94fb174"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "125fad67f7af0b22b3baf7d24e161a65843a3b23ab4ecc39695d2ba8c64869c6"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "f9d26ede864a7a49027de3405cfd38efb7b6a048d3d3581a50bfda578d3b87c3"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
