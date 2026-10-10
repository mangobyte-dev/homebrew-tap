class Sweetui < Formula
  desc "Copy source-owned SwiftUI registry items into your app and keep them updatable"
  homepage "https://github.com/mangobyte-dev/sweetui"
  url "https://github.com/mangobyte-dev/sweetui/releases/download/0.6.0/sweetui-macos-universal.tar.gz"
  version "0.6.0"
  sha256 "60753c59d91dca87e66defa8b7eb29eb5661d1143a99e5a1776b4fecef7facf6"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetui"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/sweetui --version")
  end
end
