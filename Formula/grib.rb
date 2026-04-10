# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "697fd5f4a25bf12961807f8a0e4c6b408d3f054dc133c4bdfee29efb10648c7f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "c5494923df618c0eeabd8503cba4ac2f94aa040340b822a6804ae98e1b17bb25"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "09269f9c6f199e2a29dab4aca71ea574147d890463e898b418e000ca6d57f13b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "8a2e431935b455cb2f51a98c96f7cbe906f0097f059ed6ddced5bb68450d0033"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
