class SwiftuiRegistry < Formula
  desc "Copy source-owned SwiftUI registry items into your app and keep them updatable"
  homepage "https://github.com/mangobyte-dev/swiftui-ui-registry"
  url "https://github.com/mangobyte-dev/swiftui-ui-registry/releases/download/0.3.1/swiftui-registry-macos-universal.tar.gz"
  version "0.3.1"
  sha256 "ae7c6944bfad62bacbc5a66dba82a0d32c9ede8d7fe48a83ef7d74049b79f51b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "swiftui-registry"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/swiftui-registry --version")
  end
end
