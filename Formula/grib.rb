# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "1f68e6618903ddf8b068b4a17d76748c48f7251d46e3c45d6decb7a6a64149eb"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a08de9f68a71594921a5716ba434b7b38dcd26bcdae65854dbdda5879cb61e2d"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "b2492102df0e182ab2ade96e6cb9ea36af737cb984093f0cd558034c9fe8a208"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "cee305ada3e38f78daf4595418c5bfaf1dd7aa4ff88596964c2d0010eb76b0bc"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
