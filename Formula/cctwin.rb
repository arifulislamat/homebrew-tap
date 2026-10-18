class Cctwin < Formula
  desc "Menu bar app to switch Claude Code between Claude accounts you own"
  homepage "https://github.com/arifulislamat/cctwin"
  url "https://github.com/arifulislamat/cctwin/releases/download/v0.1.6/cctwin-0.1.6-universal-apple-darwin.tar.gz"
  sha256 "42865f1f74a37733d076ad65c0272d7ecd72e8d8c0ee058c0107caedc63697d9"
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
