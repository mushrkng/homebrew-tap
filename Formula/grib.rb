# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "206a8f24785ff1e1486501b87303a567b979af2080cf58d2d6d09ca20e856b9a"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "bc406b902b1d2fa8c38d374ebf67ce50c446628bf465a58aa6f5820439a727fd"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "fa6a1d6fca97e2be12a1b9ea813fbcc577c94f07ae0e52baf7b4c544527f7cb0"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "d2891caf92269daf4d613772355222ed62caa355f5ff0a82812e7281ca614558"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
