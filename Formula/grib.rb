# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "1114e02f8d07455def8b2fdba173bcbfa6f4153343625103d26e25f285248366"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "6ff191b14ccf5a4aa990c4fba2792188aa4bc00e67fc222518b1370d311b8a15"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "45f8442a025a122056e1ce2c86b1961c3ff4d4ffb05a3ec5656909462909cdf0"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "b09a94d237559e3c82e206d43296a642119f3522bfc9f8059bb413eb6d7d969f"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
