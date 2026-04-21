# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "00ab9d488519a062196f44ac94317aa2a32326a29a6ede48ab6de877f982a230"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "ff7a53f821293bde65e68144bca88d9bcbf45146f0d8d86cfa44abb250dad536"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "a61728925c882eb534a9c40dc88b303d16e6fd7a630533ab872058c093eae21a"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "fc32b7be6a3eca8c2525d7ec24b10c64a3c36c5357f6632bd4b8db46c770ec70"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
