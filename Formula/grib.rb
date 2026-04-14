# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "57f3bfdda5cced653f50249f3c82cfe8556de78e150e870ede1669fe12d359b2"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a346420c5ff9018ae3d8ab471d8c80c0fc511cafc0f022ef45a2c78b6dc87726"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "0276404f6822dea077206756856a38e79929b3d4f99f2706b979101580b51626"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "8f049ce89999e881b9040457c106afae79ddd02ce713a0f47940c30ae00e7b5b"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
