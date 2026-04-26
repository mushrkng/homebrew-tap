# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "b4f9f8fc7b06c068876a8c883f2577850e4b4e1b334643074ab433b0a275e415"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "d3248bb0fcaf1cea2debf32807551a916e8221c2b50cd6ce4c9cbf9081b7f535"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "65cca98f61a26e3e89ddca4ec82a1c53ecd9d11df9aef62c45b687039142fd6a"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "c4669f4f8c0a6d6bddb27334c631fcd187d6c8baf112e4b138367d38a8adaad1"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
