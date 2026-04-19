# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "170318bd0d030a87f2f81fb21756c9d303ef4ff377c27a5c6a3d60b52e182cfe"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "9d0ab56d5ed52968db18e55ecbe5e8389290602a5889e854a5dd6655bd400c0e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "e09b93f5d318c205e8ec31e848ceab8518e5116cba542bf3095c3349ca80b7b3"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "ba304b9ede645e4b8207a03e44ecb88da35b80aa6667e53405ee295d43c6ba9c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
