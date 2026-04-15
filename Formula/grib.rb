# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "6221c7d3577f2d1c82d74e55fea5bf21c95876eed7c2081c0d79531892930951"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "74f117fd3c56c416cb66fb845d6e2fec7f150760bd4cd3248dccee7f5a70591e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "2eb987dfb2cbe3abe7866db1b5fbcc6688cd923f024510d6ee7eeb4f072e7815"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "992c9695f91cdeacbed97e2bb740f0ac3505e98cde8ee1483aba3e0154937bbe"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
