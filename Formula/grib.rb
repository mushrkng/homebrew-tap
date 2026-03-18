# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "16aab2a3a0f6dfb214f09b8b46ea3a3bf753573dec6463db7b7b4af735de5bd8"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "254c8f977adaa425e5a9aa84b70a0a30ff42534f0b7c798ae763bf484d904452"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "7940a1e5edb47551a71b22d3a32677042dc98d7ceb533245c0cabbd158a8ddb9"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "3c2aedefa52ea3c3759c98c7a5839dc50b75664afa2d55ac1a092d7153128465"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
