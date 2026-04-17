# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "c9f0ef843626850320cf139b1514c6bdf959658db7b7ada813e74db6c9b7eb5b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "0321cc2ded6009760fed52949e1ba4835ee1305b205d2a0160ba4ae8ed7d2ae6"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "9b444afb41dedf0a178fe0fb8b9de2b27de43ea5ce3b09e12670526cec43598d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "73ffad1e1694fa3d57d3e7b913ed3f8115c6d197157a56ebb8dd0066cac59d66"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
