# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "b765744c1f8387341791deafb0717214b10b62282dbd39b6d1d0cf31aa1e3bfa"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "aa2b24c6139254b53ec94e2abd840ea30d458fb8f7077f507caf1577f86d339a"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "f4cc00e7192276c7b9703a1775348820eb1037a275a4652b97b45fab845c3f2f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "0b9d57b0af5d1094553b50f463f3df42f690297d794fbd8ba2073a21d43bc198"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
