class Cctwin < Formula
  desc "Menu bar app to switch Claude Code between Claude accounts you own"
  homepage "https://github.com/arifulislamat/cctwin"
  url "https://github.com/arifulislamat/cctwin/releases/download/v0.1.1/cctwin-0.1.1-universal-apple-darwin.tar.gz"
  sha256 "6641d6d7c1121d5e135e41acf1a4bee4e3f456f580a58ad58217108676ea1398"
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
