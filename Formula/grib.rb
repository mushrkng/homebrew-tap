# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "ec57e772034e26af9f09c7b523c4f2eae14f7ce388b1de9f3b77111b56436dab"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "497be6e2e3dc009e1fea2a98d03695aa945277cee721a4598c10a9a2bb1b757f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "1bf678f9d1b9b99aa2ce32392e86b6154838e6980f92bab2f907167018e48fcd"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "d426c7e180a8055bc3a62c1b1dfb6aab212eed5e2cd9c2c5858bad2e62b2f4d4"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
