# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f14d69d69cb9e14babb7dea3379ba618c83a2a7ddd7cc909d1b0791b73ee0964"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "26f80ad17e5601272f3606f78236b4786c744241cf3e633c3aef050a7b58dd64"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "be9745c0203abc789433802bbd2307c3d9f7135707d9cfacb9d2d895efaef11c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "bc91fc579761525ba6c2ead8cdba859fe94cdb703a6cc99a19727a05e88e4376"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
