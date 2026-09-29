class Sweetui < Formula
  desc "Copy source-owned SwiftUI registry items into your app and keep them updatable"
  homepage "https://github.com/mangobyte-dev/sweetui"
  url "https://github.com/mangobyte-dev/sweetui/releases/download/0.5.0/sweetui-macos-universal.tar.gz"
  version "0.5.0"
  sha256 "ae7cabb17e2730e013f999b90660785d42220dfb454b3eef14c363643f3331bb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetui"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/sweetui --version")
  end
end
