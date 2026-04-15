# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "6807fd3ca82b98a1bc774d58ad219ccea96e39544e844a7b822d973b0fe92e6b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "5ccb4e9e3d2744254186f5be919475fba084174620bac0d4545039d4e4c72072"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "41e9f499432abae3484f97b120117377375c8880fac73ee038dc6804b015c0bd"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "7b9431d2accf44f364a66e8d095e8a28bc3ffe6fc7c3b1ad8806cb72504979d4"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
