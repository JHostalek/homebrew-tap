class Junior < Formula
  desc "Autonomous software development CLI - queue tasks and execute via headless Claude Code"
  homepage "https://github.com/JHostalek/junior"
  version "1.0.0"
  url "https://github.com/JHostalek/junior/releases/download/v#{version}/junior-macos-arm64-v#{version}.tar.gz"
  sha256 "83a39ae629fd7eac88367df7a0d18037faf38f9ec9d33cecc94f1bb10ee3d1f1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "junior"
    bin.install_symlink "junior" => "jr"
  end

  test do
    assert_match "junior", shell_output("#{bin}/junior --version")
  end
end
