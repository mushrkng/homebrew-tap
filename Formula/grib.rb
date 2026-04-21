# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "18f789fc32b407fad416784d262a56d1d10ddb3ca02a6f32416dfe00b3f677c9"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "2336308db8badb50b6268743fc35d1a9a5ed5ff2f619c47685a5e29f1a0fecd7"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "36fe898ca2baf074cae1613ef15976bc891b907ebfa0b8011af83b99f37225e5"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "61b074f66fb9576006312c14f81571c116b22ee899e5299fce298d8f7176406c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
