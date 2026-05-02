# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "07c6ebbcfaaeb28126c820c4ee2d2d04f26741138b58c6eb575002a769a20015"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "e9a0cd12ca591c3fe99457e6968aca559b91df4e34b340859c42cc61f70b0a06"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "806a10d1fc439b18fe57541d958d63704db042c98c6f5c7923873bd501967228"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "7287ffcf83181715194876a842c95857b3a164b1fa1b4ecc0ac32c7a45d78c52"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
