# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "630ac9bf84296a3cf1778d090f4b26e8af1a98f3586839c99b23f10b0f1f9fb8"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "e06b110e9b4418bbffd6bca972856c52abe5e9eba0ec40087c0e8c6657de4e2e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "b6d8f86cd1310fe9c88b33942a43fd7f55b5ac29640d144a8573b304a32e1c6f"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "4dfe4a3231d94e5d968327e276bb8d8f54b93630126cce78f540c272ea7bbd0c"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
