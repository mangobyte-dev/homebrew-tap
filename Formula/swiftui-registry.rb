class SwiftuiRegistry < Formula
  desc "Copy source-owned SwiftUI registry items into your app and keep them updatable"
  homepage "https://github.com/mangobyte-dev/swiftui-ui-registry"
  url "https://github.com/mangobyte-dev/swiftui-ui-registry/releases/download/0.2.0/swiftui-registry-macos-universal.tar.gz"
  version "0.2.0"
  sha256 "6ee6c413f42ac5e6eee4d7ac5d6aad6bca181093fbcd0ed7a526a40a7aea64fb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "swiftui-registry"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/swiftui-registry --version")
  end
end
