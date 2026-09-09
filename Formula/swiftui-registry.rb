class SwiftuiRegistry < Formula
  desc "Copy source-owned SwiftUI registry items into your app and keep them updatable"
  homepage "https://github.com/mangobyte-dev/swiftui-ui-registry"
  url "https://github.com/mangobyte-dev/swiftui-ui-registry/releases/download/0.3.0/swiftui-registry-macos-universal.tar.gz"
  version "0.3.0"
  sha256 "1f815ffa935beaa8cb81717e0ad95a2d42e5ce9b18a56952f9ad0a87dd4b7111"
  license "MIT"

  depends_on :macos

  def install
    bin.install "swiftui-registry"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/swiftui-registry --version")
  end
end
