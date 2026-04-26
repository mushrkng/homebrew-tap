# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5716c1565ba65db799a9fbb2c3b4e2c4e3e12292288b477bcf69acb7d1f643ff"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "4808ee4b0ba1c9dd8cc453978b3fba3b5a7dde83fef594f4586268bd9eb82183"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "c4fa9ad6b158a5dba75191bf102b31d3457bf40e17e473f64145b7d786de5b51"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "d07fd18aae4ecb1e8a85d04fea238725deeeffbdafaedb5c46e67bedbe8162d1"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
