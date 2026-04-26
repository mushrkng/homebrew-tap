# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5f00e24d7f59e57b0e8346de2ca05d6e08441d77a379700390a31e812e9cec27"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "cdab4a170e527a4c2a865c1ab6c8bb2c97b737d76f78172897753eb65b2f33fb"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "13391eb3e1b7e98d13b9a320e2fe7e8953ef97028a336ac69cfcb7c7ac9906c7"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "bf7ff6aa7bbd54b03cd96c507d950ddf03aa2aaa19b6aec8290ab45f7013e08c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
