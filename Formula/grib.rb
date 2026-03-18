# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f1744550ee23b6fbf0beabaf823d2fee60f509c2abb167ce81e3590730d16df1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "fed25ce5426fdc45151edc14ebdfaa7166fdf75a406596d612ad5af1430e0c82"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "dbe768669bf985f8fcc05aa70a0503ba541fb08b9a768fb479a4602e3cbcbcf2"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "c113b865eab1ad6dac4b505b8815811610da4408bc78d76906097ed18df0f37e"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
