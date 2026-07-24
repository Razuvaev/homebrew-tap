class Tvctl < Formula
  include Language::Python::Virtualenv

  desc "Discover, diagnose, and optimize Xiaomi Android TV devices over ADB"
  homepage "https://github.com/Razuvaev/xiaomi-tv-cli"
  url "https://github.com/Razuvaev/xiaomi-tv-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c57b7b94ad9c040581d1bc05ae695f9f6316f01ab5810045861cfe551b6365aa"
  license "MIT"

  depends_on "android-platform-tools"
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "xiaomi-tv-cli 0.1.1", shell_output("#{bin}/tvctl version")
  end
end
