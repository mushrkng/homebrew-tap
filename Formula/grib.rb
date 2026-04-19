# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5a653217cc8614cfcda7447597656d35e571486a41c7adf7143ed4942e6698bf"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "6d5e230ca4b10fbc59fae58aa6d09dc621bfcc5c8eed2644e2e41b64a10f48b4"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "8617bcc85df1dad4739a051bc159c839f1e6182119a7e1ed1b724a1e9e86d6c0"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "abff9d8be55285b00d5a98502249e468104f24a23815901163d3d255a8eea1e0"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
