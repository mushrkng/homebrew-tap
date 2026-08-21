# scripts/homebrew/zentro.rb
class Zentro < Formula
  desc "Tunnel client for Zentro — expose local services to the internet"
  homepage "https://zentro.sh"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "cec02410bd1371276533dcf6937d3fed7a6e8ce05cd63b37e70bf144f40d1fd3"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "4b46d719b497e6378884e110a38e0010c59cb7522a09bc032d1a5e42f2506e4e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "01c64fe2e63ddce5a079a919f562e4171b67ea317a9329292eb6ce5fa1d97576"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "a94378af95bc4bc4f90d0a87c0b9591b6b02f34c0a577d1b4dc007b32d3b583e"
    end
  end

  def install
    bin.install "zentro"
  end

  test do
    assert_match "zentro v", shell_output("#{bin}/zentro version")
  end
end
