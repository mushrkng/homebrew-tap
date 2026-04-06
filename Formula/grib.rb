# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "a0cbb21f1fee823911d32d1d75bbca163fd888a4e81afc70a781d9b7baf38795"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "d00ee43d676938119044ba4dba623ff80b3e04ec410e9436dbba1e2596b4170e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "dfe33cf58ba8b696a94a85982f8dc81019f3e961cfd5624f8d8cf43ef02126b0"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "300762aba6e0e18869b3b9c7ad4bf739c02d09f21e3faaab46e0b499dce784a2"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
