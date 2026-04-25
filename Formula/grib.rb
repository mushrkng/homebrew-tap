# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "9f0b7b9f634893eec63dc76772ad7e70d47c07fff9b32f0319c966496376e062"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "28933748347b167279772f1e05d13e43b2764c73277b1f501eade7960c3cc636"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "ef842f9bdf57fca8ef6c3ac70daf12fb49134469a1b1311cfdf7ac3e0989447c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "e1d6e6403ccab9095f695a87fa0ab7c52b7aa9c8afe8d72afa75ec3a1f68fc3d"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
