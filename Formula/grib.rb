# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "41a464c8b5f5000668086c62d93e0e1ad0756179aeee6355b1375cb6842c57f1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "f80953a5e69b85472dd725bd9cd4e95ae95af874982e57de64d0f31cf4867efc"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "11d3ba23396f89b53358a578cfc9d6effa8b4e17665baddfef999c6404df9713"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "3c189a53bf9d93e06ec3b39dbc070fd9b2b694d02f0219f3879574a266f7cbd0"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
