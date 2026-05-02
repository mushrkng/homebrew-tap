# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "e2b2d096b4c202459a4e685d325a5b93b89650ba7e6d2c673bb2ff054b490d03"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "90e34ed9e79b8e65180b75afa338842fadba726028f5fbc19dd53941a1c860c2"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "fc3260c6bda23ff09d374ab26f92cb56297b9aad2254bbad81bde3fe38424252"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "e2a52c6f003fca58fb828c94d6996e8a2c18467c2dabf5c1b6f898465bea953c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
