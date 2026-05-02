# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5f8bcfa433f2f03a8e9c5964b357b29ef76a8b405ae17a325e85a3c77cb7d36b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "95ce2cc0903e4c7f4c5af35e329161328056dfe7ba3bb21c7292087e28ae0354"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "96be2b972a9a3528b934b8689090f0c5c97ee9dbf17ab5bdd82478a412976380"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "379bec601498015ab698746e25cd35d05b229a9302969c85cfe656bf6ec24224"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
