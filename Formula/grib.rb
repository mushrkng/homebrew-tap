# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "453e89b208f21e73aced39b7941b4deb481378a310ce8139546e65c4c88d7bbd"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a09a4552cc9b62da68aa78b742e520a8ae1b04d4a906af8e0e335564bca76c06"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "c50c8547d5abc467a121c67fe2229ccc0279adccb145f11512baf78561da10f1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "476db09715519504caea395114808d592c8f8696041cb9bd8b8900afc7e63ed8"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
