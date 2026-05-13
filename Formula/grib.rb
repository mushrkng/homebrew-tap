# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "1d8a3caab31d734604dd75c3deee691b90c52e49a46c6c789910527afbe94858"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "0d576e03197a1b635adf23e9b26698bd7a83627d6f86f4ba78be927537020465"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "8bdaa81c6cb968d671642a2c6799bf003668fe7aab30444dde63c05954614891"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "a0887a31e66c269f68b87dfa4eb6a8fda492c46b063c89d5376493f11b183894"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
