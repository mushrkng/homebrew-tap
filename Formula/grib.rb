# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "01596c5b2c7f852326a496171c5aab03c947dbc9d042f46ee48b395857dff2d7"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "be441012ead8071a752e0189b9b11e6340e897c44133ff6de514d03af2022cee"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "7c793bb3129b8fdac260ed29fd0246e1a12dee0bb13bf6cda6e65f430557552d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "1c7e24473ecf5d9210df81c7d28c43d3933dc7ac45102c24f7e7102325455d1f"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
