# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "628156c915330c81015759b3c641cb714991f48fc22fade4f80413e15dc0e3ea"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "d0e1d27395d8a045755ced91ff54d1d97b45dd9a5f33fad183b0b612f4363847"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "fd608fc082f5222f5c2fe3cc81db087bad5eedabc5ae4540129898f7914d9754"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "af1100e58ddcc07ded2558d3e7971e1c1ab41384135cb34ac819b2e0c5598607"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
