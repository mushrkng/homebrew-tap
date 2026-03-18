# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "9c62ad45eb4c2091a3b438498f2a05a9c78ae4a430f7875a7f21c68d975fb3a1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "dd2e2d066e5eb28808e23ba16cd147da75c8dcd3a2fc2d5d8278eb4fca5f4160"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "fff2cc4e62c740723fe75c63f867e341fdcfe62dfe057e6751712da752bd7ef1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "3890f6e51aa94ddcdf1c3d226cceeef9a10661c0ada2cb61ed4c2387e38c3866"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
