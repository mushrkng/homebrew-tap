# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "6654c344d7b45fc1b9bf6e65185054c3a1675261a38222db223593b2bb791479"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "13b61f941aee64da75396fb2b66e965633823418b3d8eeaad8b7d73ba9841af2"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "0af7bec24a871e0bde2753a3c2843c1f0683a24daafb6f7028ca0d2228f43be6"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "26be52fb7752090a2a183144cf5cd2eedf8cb59a0e2cfd71c30a5cc568f18d2e"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
