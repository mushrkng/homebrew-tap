# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "b0eb3e306351dc3d1bf7772fb3ee33d62955725983b04a9b79085319780ed339"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "65f8eeddadd481b0f42e31775b54cb580f9c8e86f0d799429a4148077f21bc20"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "2cdad50adbf3eb65224b181320504a44a5c11585bd753552a1bbab50cd85cb8d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "281075278dd8aff5b6bb1bba3fcb6a7814b70732813f3ac3c0ca7bec8f8dcfa3"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
