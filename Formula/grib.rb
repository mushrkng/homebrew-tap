# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "39b9f25011c5f715d7abd95c86cc9ed2551956dd06174bf10c8475661e6f6cec"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "be9e1c5a2555a06455785f5c7aae18949fd9b6d1ab3b8e630407601ccc35635e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "c5270ad4cffff32e0376c1b260161e95acf36eee1e6f41b869c2312241d7ede3"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "4069afa3c8138e7622d730dcfd1fdce06c68049e0eba9b3c10b9a764fb8f6593"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
