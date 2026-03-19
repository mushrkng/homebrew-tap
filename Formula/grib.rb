# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "4308c474da27f08edc7d981f80b808327067cabe12c763a42842c2cc41e80edd"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a1ea5d5d3fe5b95cfac525ef67155201c6677277389b44d222dd538432203793"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "a85ad70fc92d77eb29bbf09272cf9ebc825abcc8e36a6286323885cf105a30b6"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "92237f811d61c0472ec9139f828a90f8be00905c5d6264a3b90131a3209c6838"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
