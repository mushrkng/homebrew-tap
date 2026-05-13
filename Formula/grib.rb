# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "c6010dc484434ff75318f3bc1d5da4b12d25be0ed71b8256fcfce716d052022b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "3a9e9d333dd9019298ee5903b84c639027b90a1d2bd0b6a1c168660b1a9d7b31"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "ab63409c0d20fd07a092a60d5739174da48a5c06b6e0c0cd9379dd37c0d9ec07"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "b77d46cec1c3dcb323436e2fdcac5558e231b8b1070989d98d1e5a51dfbc1610"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
