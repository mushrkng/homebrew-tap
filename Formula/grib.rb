# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "34df0faaf08748afe002dc7cc95123f13ca27c65de3606fe62dd1f8f30c1427d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "4df6e043fb2963aeef4a98cd7046946dde7f35ca2ad583786bae5bdd8a27e45f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "796b6652731327f9d9a953c117eef0fbc292992bca08c16a49da6765dff8781d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "6db2b9df5c5bd7f6f8550b2434b5ec8d66ed5e60bf5b575f9568ae8aa30e0f31"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
