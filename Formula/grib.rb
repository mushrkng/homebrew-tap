# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "47b1d09f9fce64c9a0d6db38e841956cb74897dd3ee299b0c98c4dba27dda5cb"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1905fbc936c821b444340b52bc9024fa75019e734df5e430e275812d42b6d462"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "752e654e675c79b8aa59509e843df627b322cadd5e45139bea04fc4be7283f67"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "d99ce28c199d3045e05afb8a72da6b375bebef52d41b2e74552cf6b763dd829e"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
