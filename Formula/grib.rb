# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "094f0e967c7f11cd4c65d97d0f9860c83c90e4f92db384fabf3477b9bd455e4c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "26d766913d88f282a838e444fdc46da42bdf2c25cae9f7213e7127fd653ebcfa"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "27eaece4adc6c99abbb6a405ad37ff2ef36695292e2f9849d48e7f9806517baf"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "874712446ef12042c97983b81621b81ba51c51dc6706c26d99f93753d318b439"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
