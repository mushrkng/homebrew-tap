# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "19a7e1acb575c975cd401fc64c1cbe3bd445c65c044cbf4d83ad6f97f5a95bd9"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "2f0a1246f75ac4097c0d2399f41677f97299aca6575cb802941e337593f0fd6b"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "ba901f0f978766203e5bf024b6eed1bc28c0271d93a33ae1d5c9ab32a5478ef9"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "9014866c4714dcf94c8418d30be6f8986b29462be0a5b4df907d3049464a15d7"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
