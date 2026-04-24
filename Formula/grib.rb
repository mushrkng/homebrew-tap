# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "abfa9dfcca9559202096d32f0c7494d2003679c19239b85f62018a71ecb257b2"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "dcb6ec41e9ac8b731f0095a524718c5e62a0c6a26ed67128e082f476a44b11a5"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "93cfaecff3ee5a83c544d31cc3b042c7bbc4fc05c4db8fb064929454d0032a3c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "73e87d20fb83624e7ab341be295d14c72cc7b52e746da8edf63526b206e355d0"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
