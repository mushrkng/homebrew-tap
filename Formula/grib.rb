# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "a5365dd510e5a6360e50ea85f448407e982abd85503565deb22e6d29d0af5eaf"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "7685bc3c2063f5ad86caef77e7250e6efb799d25a3e6b4286fc0f31f36c8aa7d"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "4622343ddba518c1975d63d01e548e0f7f64afeff526c5c28ff3969c648bf23c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "8e264e9a8cf3528e71ec35110d5427eea86df9f983e0bbdc647a66d674c1a5d1"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
