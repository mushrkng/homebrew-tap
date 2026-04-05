# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "7489a63ae463f693461e15d9598fd04f5952a40a7bfe05f9595f60c3a511a8b9"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "50fb2b78e570fcaac13394a4d2094925248c86e54d01cc57b0795a38ca3d5b76"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "8b39cbaae6ec07108d71863d760782b44106803221d2b218d97fe79002a56495"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "2b829016ddace115265e13a087ee7baad06d2bb660fda3c8d9533c65cf615a05"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
