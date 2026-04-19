# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "e83621a14bed0aebf3db2ce159b92daf4e0c76ea5247a28acf630a87d35c562c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "4f3e3795f236b6d0a987cd0c9a54f6081548314c3e7706305ba3318ff15b15d8"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "801eae5f6a08be38059b9860af1407b2e9f0b791c2d580557868a3c729241f16"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "7702fece46ca7f5059f2c123add575599598a4637a8f4ce458dd2aac2b12cbf8"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
