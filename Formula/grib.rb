# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "93aaf37323a92ad16457465d102c2e0c7ea42732e851f8a7d7c7c07a8cebbd6e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a950905ad97b18c191dabd5a720ee18fcbb9ae8436ab29010c1703eef351582f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "f20d4b6fccc75ba326854b7d5759c789c02cc9eb40f4706a83614f8ebf68aaf7"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "40daa1e23dadf7039dce1cf339525dbc658eed3a14f8cb98f922ee963cd3cfeb"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
