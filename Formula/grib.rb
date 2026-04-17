# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "62093a49fcaa2421053e2b914ed3e290a1533ead805cc4eb65e646bdc228f00e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "8437466e9a3b75a84f8f86b07bdb092e072ff9fb5cad3f0fde752c15374b6399"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "506ac319ba2e98c040a6edb20c5a698a6c666f651c7ddef3b8b69915fed9a3ac"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "047b1a5fcf980de409edf8bfeaafd40b7da046481cf86d96bd8dd4526db2da02"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
