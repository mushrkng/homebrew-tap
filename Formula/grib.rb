# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "bb63d12b4b05b4c166339268b3042ce0a01ba078fbeec5684767100a7091140d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "742661ca789049a20338dcccbb6e422661dad9927bdc60f80354e43e0ad4be53"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "e10aabba9439253a3121e37424b4b68f6a1bbfd87ae2dae1aa1fbe0d5e37a036"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "7336555b3c65ac3a1b6f1e248f1587bf71e6ad3d8f6a7eec2967c06a022b77b3"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
