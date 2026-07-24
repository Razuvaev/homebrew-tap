class Tvctl < Formula
  include Language::Python::Virtualenv

  desc "Discover, diagnose, and optimize Xiaomi Android TV devices over ADB"
  homepage "https://github.com/Razuvaev/xiaomi-tv-cli"
  url "https://github.com/Razuvaev/xiaomi-tv-cli/releases/download/v0.1.2/xiaomi_tv_cli-0.1.2.tar.gz"
  sha256 "495e7e99bea61b17aaf1284280592eeb1cfbcf52ec85e2993e1697f6b531e7a5"
  license "MIT"

  depends_on "android-platform-tools"
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "xiaomi-tv-cli 0.1.2", shell_output("#{bin}/tvctl version")
  end
end
