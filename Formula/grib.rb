# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "11e730061a1ff9027a1dc631d1c439cc3114bcc1e63eb9ff7b2b9e28fce08689"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "00cde6a2b641bdca795bb6058b358d6bbcf8dd7f9776606b55eb91f1d5a50df1"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "4f4f0a7ced460102d8cd89ca652c74a875ee447769d6328f0dbac88721bf3d76"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "da0ea17f43ccc025e187f2e8833e2b68afbc69f5735d314af00ee2ded98b7608"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
