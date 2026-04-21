# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "1952b683b9d649b914b805a81dffb12b212205fa895525de2d41ce6a5d79d52a"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "ca9017d282d2618cedee32b574672937f17b7f5a3dc3593f32af8d59eb2b3957"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "aefb98078ebadfdfd5dea7b3e3d5a4dde0b2c22b20dc915c2dc34e93b5954cf4"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "a5fa5d2d17dcad4579ca66dede8944db785d62978634988dbed920bd52d23481"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
