# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "9e88e1113c8d009e4c353c884cece9aecc0a8b2d47200e24016bb27ab2314e7c"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "1495bbfc66ec2e5c0fa1bcf7a7f6e01aac49e50a182ae09d9e918f46c26d5273"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "604edc06e407253d1cc759ef9e0fb97ac577738e4f974975e5760606b97fc17f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "49821aec7d0aeac25eafca7066523020f487d70661d8f769e281abd03bfc7b1e"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
