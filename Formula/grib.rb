# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "e4162fa7151658f1721afafd98a2f03836c22db21968e3e2f330b2fb102517e5"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "6691711b8618f97b4153c0d431cd8bcbd218b5921feaa365d69386e88a4815d4"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "1d8ee403a1908c300d5423d310023473fd957ce9b1d536efab6413d4120131a6"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "3c20cb91e58082f147567c2e0e05ef585b47e4625d22c6275d6bff3216e578e2"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
