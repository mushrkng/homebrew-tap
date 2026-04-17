# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "7ba45a760025315085d79507c09e168ea64dff622e47efc4ed62c19d28c93848"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "c71334d68dc6126a11785235d14be26ebcd9449081d15e1ed248597891a0eaf6"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "282a8378d4c82c2100b2d252fa6a3e1338dce3a6a6e9862d46341a1ace15d59f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "09ff3bca63c3fe092fbb9431598a7deba4f679d793fc6d9f407b41596ca652c9"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
