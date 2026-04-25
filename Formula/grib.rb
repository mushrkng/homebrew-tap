# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "6ee1c3f28d3179fed62b3e30593744fd38afafdfe2d970ca45811748fc141805"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "da2353cccd05e7511f2f429cd279b35cc402fe62fb9b480313e962da44fb6dcf"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "fdee271765f864c1313b636c89aa14e0d125c65d7767c4b670b07bd775e51597"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "95238c9d1f119285486bb63806a5d8251f686b0a252e28528801df30c34f4579"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
