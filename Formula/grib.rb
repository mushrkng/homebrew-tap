# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "efcfa091aef7b1870d21def52b2bdec3987d5abcfecf86b5f65fef7c07019d4e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "998202d1b21ae226e09fa66f54ed6e6916145a428dbdf01a7d1553bf1266e945"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "adc12dad29d7091795d1c39a4cdd036371ddb75b25d6d83b414f376141771caa"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "1a060dcfde41a76a53c31f79e3eb9c6bdab26364b08ccaaad868b168cd42a8e2"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
