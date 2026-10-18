class Cctwin < Formula
  desc "Menu bar app to switch Claude Code between Claude accounts you own"
  homepage "https://github.com/arifulislamat/cctwin"
  url "https://github.com/arifulislamat/cctwin/releases/download/v0.1.0/cctwin-0.1.0-universal-apple-darwin.tar.gz"
  sha256 "bb67828e1bc00aa898555b805ab8e56f26e2305c2ee589d12b125c75dde1bbbf"
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
