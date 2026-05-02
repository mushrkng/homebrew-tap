# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.18.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "6cdca6b11ba6d6a95c931929e3dd0fd21ba321e385a95c458e1cd80182375d2e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "0e327b60713d355ffb815e3444f0ee7dc98d4d4c5d20486173bb9c7f9b08f060"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "bdd625280a022aed8a63a317baed037b95979c04cb23c7440d29228de86dfb01"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "f4becaaaed05401612ed46930609f6926f56ffce4771677d27826e926d626edb"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
