# scripts/homebrew/grib.rb
class Grib < Formula
  desc "Tunnel client for grib.cloud — expose local services to the internet"
  homepage "https://grib.cloud"
  version "0.12.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/arm64"
      sha256 "58a96fd5dba01b5d5ebe9f3af3ddfaed382b30c966d97feb0a3e909b7b0eda46"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/darwin/amd64"
      sha256 "bdad3eb48f7317cff70be0af8d8bb7f3c778e7ce7cae4228d99c5758309bf32d"
    end
  end

  on_linux do
    on_arm do
      url "https://api.grib.cloud/api/v1/releases/download/linux/arm64"
      sha256 "84c45aa6d02d5cb5f90fe243237b3e66739f3dffd50b44c7b34a516f15635506"
    end
    on_intel do
      url "https://api.grib.cloud/api/v1/releases/download/linux/amd64"
      sha256 "b3166e3f4892f2249c445e85c7256cb2aa4412a0196f30be195909ac421e0356"
    end
  end

  def install
    bin.install "grib"
  end

  test do
    assert_match "grib v", shell_output("#{bin}/grib version")
  end
end
