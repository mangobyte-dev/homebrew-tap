class SwiftuiRegistry < Formula
  desc "Copy source-owned SwiftUI registry items into your app and keep them updatable"
  homepage "https://github.com/mangobyte-dev/swiftui-ui-registry"
  url "https://github.com/mangobyte-dev/swiftui-ui-registry/releases/download/0.1.0/swiftui-registry-macos-universal.tar.gz"
  version "0.1.0"
  sha256 "9782cbc9539a38f1f16481f9416c11a2213f01c2778f01bba8596f1e7819c583"
  license "MIT"

  depends_on :macos

  def install
    bin.install "swiftui-registry"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/swiftui-registry --version")
  end
end
