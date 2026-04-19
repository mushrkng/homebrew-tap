# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "adc272d719cbf5b7857908eff7e43b9ba7c25708375de504f518360fd37ff534"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "009ee6b8ed8e2dc5ecb75a6d61d812318841508036282ef2db664b00ae1f2c73"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "cc389960ea45ff46ddc5fc12abd5cfe61cbbb36ab433d330e8964095ec3f023b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "0a447d2f428b00e4ea4aebff07266528d5247a67ed4bb90a4bbc5fbefd2cd197"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
