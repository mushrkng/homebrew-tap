# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5ba60a37a5e7042f90963aadf8a6172bff6bd0fde055fd44aedf2cbd810b8bb8"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "99386720e61b4743c142449b25add72786f6a92203c7f6ea001b60bff91aa5f2"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "f9e41f615128a5cf2904d42ce093cc19d878bf2a8b08b4ab5aaac47d161c96d0"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "4370085ba47749f9699e7e47bdbc4a7e9b76d626ddad8a9d5c3e4c4ea6b1afb4"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
