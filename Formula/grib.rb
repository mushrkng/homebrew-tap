# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "26540b180d393364cf0ca086e7cd3ba2d041a8846e3936bdf9886b1c07943316"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1c1c58e9a213ecb801ad9e138ef47f825d5fcba86ecde9e5139d1c25d7d6c917"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "89c200d958f7fe5c16524df1a38c1506e61b3f24e1aea007aa508f4b4f83aa1e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "1e235579160fe5e4170a6b40c537f041a7a6b24f21ba057db4a92966adb87427"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
