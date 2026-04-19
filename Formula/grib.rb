# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "2c717777bf6cf6d47ce1a5d93e1ead3e95a1109c646278b18fba2046a181670f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "3981ff83f7749f392057867ab5c7cd6c2000584729f8e254bd2f134f07959978"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "9fbe3f8258151d801114d4bb3e50306f396207a7ff71da6516ccc8fe423e7357"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "75fa13a430c01674ecc14e6a883f575c4e315e20796da4d7c849fa8318b4220f"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
