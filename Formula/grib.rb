# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f8bb16b50dd44f547db4babcce86214d87018d207955aa92f8dda541e9af1d6d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "561060047f4c9ef5b0ed2352e16739cef71e821418691a7e48c62616b93963e4"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "4f51d2f8efe73b028de589db3fd7f71958c8278def05edf9e35fafa5422a5130"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "bc38c4853125335a1483375ea9b7119cabeff836d50de77140c076027a8454c9"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
