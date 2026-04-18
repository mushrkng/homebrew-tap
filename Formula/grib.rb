# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "f4be4f1a461ac81bb3a2f45568c83b8298b01815bb9592df505a4553a044d830"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "3d400bbda27e7bb37c4a525c618d2ac8d6487ced1e6085ab1d65019b8385ede7"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "88bd62e10a843863a3e59a16b46aa28d20c22bf6a4073294e0d1d23ede06142d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "5c0ef53746965852d2badd528080fd07bb245ea917030bce0afd92e2f5891a73"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
