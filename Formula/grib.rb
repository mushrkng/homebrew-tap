# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "62f3d6eddf8f4d47363af15730928d466f34fcc8f2051a654c76cf59f9da5a5e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "d36da94a4e854d4a6b30be7f9f304b36e382dd3e7e3ac9cb8484ee67f1028745"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "987e0386e4fea9426fd4cd2548e6c7eaa2c7386b8a0f8c3bfd91e8fe2158bd6d"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "fe8ed0d2fd3b0ce97665223411a9f2736b215ade520a3c3047536d1ec98e3265"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
