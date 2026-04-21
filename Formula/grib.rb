# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "0c6c5ac2245d769196a0489793f7ecd9b8be5744b9da14c9d38ca4fe68a18a4f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1a98982835f9b760b6777fc48a3d93aa4353af9d2d3a4f33f150d03a7524367e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "8c85f9e0a89468f724b2351be17ccccaa4cdb98d76ec4b2dbb9f30cda206ef16"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "8b212230d3ec7f85ec466fb81c7f2cdad806bcc089347cc7990428abd26c4480"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
