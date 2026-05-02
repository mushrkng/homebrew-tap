# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "b3bb10ce78ca70debf147a65a99691d934a41d158fa2cd6ac364e32c396fa130"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "3d826163e66e49502038329cd8f463a382ee7f282c14a43f4c0c03bac503e060"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "2cf63c7e095a3c6c0f1b0f9f47d1ef34fbfc29ea140da2c420d7651f0e50d8a8"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "929506a880299c47756a7a521883f6bcd6bb0e3502f8c77ed4a6a9b7ef8900c0"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
