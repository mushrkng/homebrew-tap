# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "8bb46b9f5860dc9e8dd282cae2f565e83f4cf7bb21b2a29e22989f97590d1d8f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "140d91844f8a28ad48a3cf89732894017bef4ede3ebb1f7f97dec95efc5d96e8"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "687cc16168f591bad614449ef22611bd0d52fbc59a858a0ce370b88f88638633"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "13e94e5adbfc7e3c165701bd1f16b1c21f5adfd8b3c8fd2fadb54265afda8596"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
