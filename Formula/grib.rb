# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "450c1b7ffa22ec67d1c97f3f4feffc241914426baddc0811c1da7ed0d4952853"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1eafda0974061407aca2c6a0612fb812c775b2a97e8508250d35a3467d0bdfe9"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "c2d7b54995798400dc97c504191482a0a305cadabe86dce4a64285c0d4364142"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "1b2c0ec732967be1bfcb2b50edfef1efd28a8499fe5f91dcd14517adcb7170de"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
