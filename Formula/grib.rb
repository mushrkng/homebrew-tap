# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5828c8121e84419ade79ec15120dbc57341b491c92a5b093a210df72696379da"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "794c6d9472bc9f1787f00e40059c1dc78bf1ec53ac7d81cde4fc33f5cab66cdf"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "99cf416fcc5371f11c171a6c3c725e67d4136fbd5f2b91535b392b36966847d1"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "24bca11fa0531d9bafcfba8eb89505039d019daca9cc2b6ba4d68fe29fd79721"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
