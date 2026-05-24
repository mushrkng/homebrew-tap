# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "e850d6444962e23b6e1a8c01b3263e8e90da86e8598b3617061b0a83515caaf1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "f093985ee0ebf5f9f91ef785c67195e94b6418b3598f82ac10efca499bf065e7"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "24a88d75a5f51de37d9538eb8168a32d1cc0559155820683309a2ce859bd1afb"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "03d771e593d07ddde8b53d3e25240a2902048592041e0c64c47729d937f9dcbb"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
