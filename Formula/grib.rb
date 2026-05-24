# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "17dac63f3473acff88a2626cfbdfa558678f56b6b6a788b6940728f94d42162a"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "db2e0218196b47af24994e7f12f8536291c78d9b5fed1b8f65e9fd29c058a301"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "90e7c81ae0618ee4d29ab47fc76eb934d46fd50eeaf7a6beecf12fd8de97a9da"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "5f91851eef46313bdd597950cfa102aa9263852106282037726654609121c7a1"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
