class Cctwin < Formula
  desc "Menu bar app to switch Claude Code between Claude accounts you own"
  homepage "https://github.com/arifulislamat/cctwin"
  url "https://github.com/arifulislamat/cctwin/releases/download/v0.1.3/cctwin-0.1.3-universal-apple-darwin.tar.gz"
  sha256 "fdb846d8c9698bfec59f46667239f25c08f56f9c7439dbdebaad4f8431f3fdd0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cctwin"
  end

  def caveats
    <<~EOS
      Start the menu bar app with:
        cctwin
      Then tick "Launch at login" in its menu.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctwin --version")
  end
end
