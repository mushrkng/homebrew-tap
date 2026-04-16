# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5c3d6dae77e0f7924af6e7eb5b0d31f48a5f328601e64594a8b8cf8ed773222f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "d6d7ea614229a1ebd7b8c38891edfacf5f9a4152b0bec2428f5666f72f37ab73"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "298eec6cbbadf40342c50bdde6093ecdecd5b076dedfece4ddd80c8257a91e66"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "086d1d1cff82be88bcc61d54b86b284b21c4516ef5dec06a50cb332917786a45"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
