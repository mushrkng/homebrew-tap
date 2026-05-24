# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "de2ce526c74731789553db53821ef070c19dfa4d56f33ce1c6ebd5dcdf055ec6"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "4528a81cfd8b93bd5bd7d583a2176abbf1eb197b6616ed7eda1b7f1ff4f2a5ed"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "24dc51cdfe1c3eca13be19997f967891c4ce44adc1ba0c354200145e1c6b2a9d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "dae565832ad24dc18c8e3126fc1f3c210e150e477b937acb5650087cc6838aa4"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
