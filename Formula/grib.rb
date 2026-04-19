# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5b6d1c36af7f82dbddb9ae8f476389a6cdc6dc3942ea7f9ce01b3491ba02ff66"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "44d24980fd2e04eb952e866962d270c01548a95811e92d94b973ac47abff84ec"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "68761d9ec7b3c48471078970306560303f07a1f9f771ad7ad83c08fdb169bd4c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "4685c869565bd97819a9589af16d0152f7847d62da86f06730e013612ab3a787"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
