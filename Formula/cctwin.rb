class Cctwin < Formula
  desc "Menu bar app to switch Claude Code between Claude accounts you own"
  homepage "https://github.com/arifulislamat/cctwin"
  url "https://github.com/arifulislamat/cctwin/releases/download/v0.1.5/cctwin-0.1.5-universal-apple-darwin.tar.gz"
  sha256 "699d65d8f627f158918cdb86e865754639da8da9bc20f2ccb27a9ff285eae604"
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
