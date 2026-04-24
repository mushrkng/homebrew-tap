# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "321ce24bd359e95be03ccb5427deb198f14dd9f72fd7a9584bad1ef05bc77909"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "bb32948657f2c1e8e53b07d10d94e3ea04570a796d8ffe1df0131f98f2542911"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "3f63f4ad7775a561687c9115f3f739f00d457ee5c7150841c60fffff97bfd5a9"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "dcae358f4a1caf5494ca76ef07ea21056a2bfc91ea6849e864a9c44a789023fe"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
