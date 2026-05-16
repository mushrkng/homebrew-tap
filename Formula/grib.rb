# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.19.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "fa938b236522653e050445968ea0b74425a8b93c9891f58ec50ada92fa1cd15e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "62a1768dc3935f7b1f5cb52ba74e76a104352fd36839cf2d29f0badc899753ff"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "f8f35905ed243d72fad7fc35f8bd81348dfdd9b8d6f6cbea294e001aae6831c2"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "d2590aa03c0f01c2b6f3debe17bc0ea57c1f5fa9d34cfb5e7feae0b83c660177"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
