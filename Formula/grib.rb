# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "a91c61fdcdf9a64566570dbc5cc8fd58e6d4b553a052c83cf6cdde0a5fd627a3"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1edccce2b6b0e13cf6c2e8b247c05ff732bc43327d2cbbc1a771316e22980763"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "9f8d6a17ac17b3728f91b99b07735b3717e8e142e12cdf828765eed6d53e2a8f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "57f9eb7e1ec0d445aab14844b3177ff8b9d67202f900a874a2406034edc4e96f"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
