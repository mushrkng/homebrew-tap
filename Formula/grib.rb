# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "0d1d9f23fe7f1254225a6c24fea98d4cd96674cd4175df2b6c015996faee6eab"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "9b22d51ac61eb31af2eb3b0c232241786fa381331318d75d84a93a6e33304675"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "cb116908a038bf03b0962e6da3b546f2b8497e27e6a305fcf0d286cacc98ab9b"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "1c48ab4e6471409884e1354dc85a30cc281f855beed2b724c6ef2b5c96b2923c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
