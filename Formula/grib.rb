# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f4f7b8b20cef2f6c3591885562e8dcf24c5fd4d3fafc43f248d1b3c132db09c2"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a81541c29abc52d180970d51cc867e3c4d41ad0dc2bb3c7f73b94893ce26cf73"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "69fd002e4a59e9c11fe2681faf4d523f6296137cbeb29bcee0f0d182b4c818f5"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "d336d0db7d4806873ac85bc64427e35e27bfcac0d23abf7909d6093d4d864963"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
