# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "91f3df37cda3fce0c6f4740ef10ae8faf43e7c7375243db5b7df7b8cc330723e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "d1d1432e65c9badd74e52f6d077bf3c9a254e52c9959ec6de7c6d729209e9555"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "f6593cc95f8d26de7d1f67776a5a4672e1eb43244690fea1d9a1297b16406555"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "0863826b126792b40a8b95c1d69bb4774431131c21950a4315ce7f3e0c4b595e"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
