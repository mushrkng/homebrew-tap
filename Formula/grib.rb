# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "04ce81209ab91caeb128e211542cc60a4f577f0cd6b1a2d58af85807111e1f93"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "3f4189bb8c9060e2c9c006c638fd9206e63bd3913f2a5bc6cfee6da99fa37ed2"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "6c7a6aa0b7a7311f5c8f22072474a41db7776d7c6d5e5c62084d0c0e71f25327"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "a19732755dc1d9ca93d2e01d856c4cb372b00e998db33c242b1470d737609074"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
