# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.20.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "5cea8c77a855f6512e68ee45ffc9cc61739db26e152e9b3691c301efd237a331"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "9947535920df2aad8ee5e5d7a8886b9cb608a2d85d7469060457c855fa6cd52c"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "76564deee613715ca9fc3cbe8e547af17781d8a43e52a8c27dc39aea8cee4981"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "f4ffc0eba2707b4990cee3912c719eca054cef4f8550d963829fbcc7dbb0a4a6"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
