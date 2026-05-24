# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "b7b12c4da4d62027283eeab4323aa36b9c9c1d7c8b191de72946ee10efef73c2"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "b60a6e5a0fe765b38031d2b14cfc0e0eb35f4ea3b1b704d3426a597255b74e5e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "2e56f2e3004b8bbd126a6f27fa0b3480226cbd756d6d48651f8065381e40d72c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "dab0cf92379011832584d7d3b8ce5f9ef773622c5bc1f42561caa9195f78109d"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
