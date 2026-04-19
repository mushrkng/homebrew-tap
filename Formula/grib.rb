# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5361e3c900dcc41ffefd58dcf0ea6f43b5fd9d2900a1edc29595219d1c6ebb55"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "8c8afd35ef9cdb519c298ecdd1fb315505f54f89ae97066c583bd3b25470c86d"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "ca46ca45a05df11c86a3086a134c9a2995f7d9ab8e0f587832a7ee47b03cd4ff"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "24f6336b116964f9980fe813645ed4e4b089e7f1ca0272a56847a3e239926ded"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
