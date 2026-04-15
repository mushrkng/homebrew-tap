# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "4707b57f7c6eae9bb5232a218a4dde0a70a30fb00e33b40e49a6e129d4e9a176"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "3a238633e6a1945ed28c755fd55534f493f5392924a278417cbdd2003f6f7a65"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "d4b1bfffcf465e0a8a6a26cffe81216ad3d1206e74b20bb3f3c835b6e1dd30d9"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "7abdc1d6ce4362291358e9547058da6d2f4cf8b290418ebb230c5dafced5b33c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
