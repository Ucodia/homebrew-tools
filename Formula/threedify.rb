class Threedify < Formula
  desc "CLI tool to automate converting images into 3D models"
  homepage "https://github.com/Ucodia/threedify"
  url "https://github.com/Ucodia/threedify/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d9096163f631404f501e6a0a49eac65c5787ce8d39aaa9eb9d0610abe074e541"
  license "MIT"

  depends_on macos: :sonoma
  depends_on xcode: ["15.4", :build]
  
  uses_from_macos "swift"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/threedify"
  end

  test do
    system "#{bin}/threedify", "--version"
  end
end