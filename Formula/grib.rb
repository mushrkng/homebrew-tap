# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f9b2b942d718e2dfede4a14aab79e4a429253d618b2326fccca615f6abb96fa8"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "ebffc2356f930f8966c0d69e4b6f2499d57d9525c8c8c5e68df28cc34235f731"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "33785444f69f733ccf5fd99d21e9b1d2a4378d46f48398a61f869f12edaa1824"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "cc1ca6b16b73af3884a650157ad523178580a7df87259c8d85e9a0e7061906bc"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
