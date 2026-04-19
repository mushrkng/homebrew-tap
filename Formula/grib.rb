# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "69890c6e7c0083a6d66a21588e45fd57d735c3a83a5e13018b6d0ec28deab888"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "ece05eb52ebcf9979fdffc42a0b1fdca64017db8a8ff0a33d4fdd6730ae8dd13"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "1c8ff0c16762963dcd8d287c7144669ca88724a9cb846005817ed4a7a2a82c9c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "73b0650a5ed9ddbae07e794f80f8dbe5e6d3bb8af7964a06402b198abb8dd12d"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
