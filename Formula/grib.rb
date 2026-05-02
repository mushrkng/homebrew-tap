# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "924da68c827baa43b37cd6cb17fd257aa2278db54e94ae14973073f068fd599c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "f5b1ab362dc396c5b21734d4be49d4b07cbde2ab007bd5f4da2bc937661f9b7b"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "42dfc1da07a88214639a73b226c98cab478db966799cb163993c9ba5a762c5f1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "7a5851379e2880c8c1f9b1aec4f6c514225b022037528ca65bac6f3940763eac"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
