# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "0db2e3dd908f4998a9420da069588b881e1ce8ae75712dd265c06d4948666cd5"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "0fa5b54b968daa7dbd1821932c312975a200ebf9feb8314c67f2cc192add3d8b"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "e87343a2aad06a3e00639980d9adce2fc1d9bdc3120e1ae4fc3bd42c934ac50d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "a115ce993707116a2aa5c86a1c5bdc8f1d9599696ce4df03eb114ac854f479c3"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
