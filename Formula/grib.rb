# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "12770e2d860f86eae8cb9ae90ee6021331c5c79cbbc4dae5e7b4ba03ad61e250"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "3b3c44bc41e9e574bdfea8e31714f80c3407708b7582c09de75524be92b9b114"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "c1755ce88c98188e2130cd1aae0884f196ba35ef848b482deb98d995efc9ee58"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "1a7b32d3bebe46e5c334de6044d5f1ce370954afb11d682bbbbff91a54fb8fcd"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
