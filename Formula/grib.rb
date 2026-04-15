# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "bc9e2c0d46c685a3619bf5277c21714aee212aa1fd7069d7d992b75da7ecd912"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1771796f5ef4ea6afa80d92b007a4d8b2269a19553aeca406e3c72f2a755b8ef"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "c46b6c197f31f2648192734a5a184c459b811a1a430c0f346f4a1e9cf79ba1ab"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "a01fa7cb7fb5b51c10b99abbbb2004bf54dcb35c4325a6fd46a1e95b2a50bcc8"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
