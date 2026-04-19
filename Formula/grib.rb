# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "931d918d605928898d8dd7742494d0f36a4a316d53a907ef71a31602c88f853c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "7cb5e78b18540c1a1c9ebdd4d635ca1200fdd790102d1ac307e89c224248a399"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "e3646aa8d6a169ba3330d77b6a73bdb2233862e46260946982b59286354eb1dc"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "44315b502e6f91729f61721115ee4496ba10e8607faa31e3e5890d0c3967d25e"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
