# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "880c1ad2df8d93d5c70058234bc1d52f97eaab21f7168a9ac30be993be093592"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "35fc3c28a6efd42dacffd7db51803ebdf144a12710ce0240e0c86cf284237a75"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "0f4585de0ba3dae4395aad6fa6082deb603e4958ac356f416834eebb70c3a319"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "00f7cbbe67839aa0d54eb4fcbe8684a425b4ba5774de29f9e046dc9da3f2966e"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
