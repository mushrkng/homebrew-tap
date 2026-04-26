# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "ac1985cfbde03ddd05142bd3331e13b696b7e31a58f59a6115fd337383d17787"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "dd718cb05b46805c1fd6ef45ba7c03f0d193fefebd0fe6e93b04c481bd10be8f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "a93a96485b7bfe9d6a2c95f9ff239bd7d243fe8af069673650623d95015047e6"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "749cf465cc9b7cb377cb1578b7d352f4b78053521a9b261588021ca15ab06b23"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
