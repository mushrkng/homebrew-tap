# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "eb0fd54f0cddb30d2caddfe01dcb554dca87f373fd5305cfa5a088cbe8812e17"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "df39eba9dee0eab717d38d523b1428d5e8d0a77d3d1eeca893384f0f5e4ab606"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "0d3f72fa059ad4061150ed0181af638276e673d088e135da6bb689c514463922"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "eda69a715bc544a7c1a64b3415c75be84796db375b52d59dc65e15d4a3a9ba43"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
