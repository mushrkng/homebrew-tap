# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "4b0786776dde2196a7ccd899726a32239ba07b8c3e5c07d85c1f1fc10449bedc"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1d7dbc2b4e0d7879a6cc5b006faa0cd18f22c672597d8bbbc3a37f5024324f9f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "18755640b1897219dc165bae5caec5f2ab53bb7e98c371c6303904525dccaf27"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "f7e63b8819463e838854a0333be1ea6033b74397be90c50de2f0661067c25cd8"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
