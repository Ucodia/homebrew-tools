class Flowtime < Formula
  desc "Command line tool to show the current flowtime"
  homepage "https://github.com/Ucodia/flowtime/tree/main/packages/flowtime-cli"
  url "https://github.com/Ucodia/flowtime/archive/refs/tags/2.0.0.tar.gz"
  sha256 "8f38e1bf9c614da44c5fb7fef1a07603d7c2a0d7994e1b94b8181c33cb46721d"
  license "MIT"

  def install
    cd "packages/flowtime-cli" do
      mkdir_p "bin"
      system "gcc", "main.c", "flowtime.c", "-o", "bin/flowtime"
      bin.install "bin/flowtime"
    end
  end

  test do
    system "#{bin}/flowtime", "--version"
  end
end