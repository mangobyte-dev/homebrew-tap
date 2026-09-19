class SwiftuiRegistry < Formula
  desc "Copy source-owned SwiftUI registry items into your app and keep them updatable"
  homepage "https://github.com/mangobyte-dev/swiftui-ui-registry"
  url "https://github.com/mangobyte-dev/swiftui-ui-registry/releases/download/0.4.0/swiftui-registry-macos-universal.tar.gz"
  version "0.4.0"
  sha256 "6b2ba147884ce3d29f163b8e75b7566f33e40b51c970b0b5c937b5485bfe2495"
  license "MIT"

  depends_on :macos

  def install
    bin.install "swiftui-registry"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/swiftui-registry --version")
  end
end
