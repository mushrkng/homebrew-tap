# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.2.3-rc.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "316c7364ec8f3d83042085aba1a0f484bef0e6cc3d3f157d91a42a884e6492bf"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "a56eeacc595a16fbf8207b215d4c56f126d566dd187b8f585d21f58f01392d28"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "d6d8835ac00cb9446c6e266b85ba6660996d04e6c727bab5484d54dd642d233e"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "2331b9df8e3ef0afd062a835d025b9273e94af2ec92cebf035315d2195a79f57"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
