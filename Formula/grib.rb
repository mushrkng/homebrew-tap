# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "080e1af5af389dfe6f6a65884ad11684a2df313a87128ccd7221827b615b0d4f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "eeb9dba550e07e6a43364d2f2dc920b0be6f7ab9deed893a0ba5448bd809a12d"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "411a2a931b00823645915d1c33b8973ea686480ac78b033d194b18913a1bdf33"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "9d89c17009b22f08e627621324b76581495e97ce72080e99bd70f44b0419e5c1"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
