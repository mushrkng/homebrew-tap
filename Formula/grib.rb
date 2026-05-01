# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f40d1cddfdffda82c0d687f9beb5239974972eab55c4dbaa11a0364d987311fb"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "9828328cc13c4ccfba190ef38854ed8ba1b8be8d89388695936fd85e4b92d566"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "fa0662bb918efe198fa4894abe0600d6f56013aaa026732b90cbde9952419c9f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "aa256387c63ec4a8b47e71a8025b42e82079500f88a89f2408528fc9b0af3469"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
