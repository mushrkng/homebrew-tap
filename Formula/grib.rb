# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "057086286f2702d971630dbc909508d31fe0894e1e2151be9d5da578ea437858"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "12ac47f98f92aa49c73294b43eff817f5a9abdd266d9d7c5301936d9dc4ba2b5"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "085544bee3d0edca6fe65ca0e508934f6a6382e12301cfa5e9b703ed77b52d3c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "d7390b0c1bc6445aded19a6cbf34e05532dabc08f876c66da5f88327478a4e23"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
