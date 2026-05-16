# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "122993c76323f0f826b31cfc2c8be2143754426b474d5f27c6edcc51eea78660"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "26ab0040eb61912b904ab0b246067f22e86f6de5172a6eae3bf84021f5118bf0"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "5bbd533f9b9d158495ec023f9803e9c67932114a2036a92fe230b8e7c97037d3"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "47760e30831bee2e0253481b57b584687fd3f8bf6f1ccb3a617e638f95ef79a9"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
