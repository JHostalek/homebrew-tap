class Junior < Formula
  desc "Autonomous software development CLI - queue tasks and execute via headless Claude Code"
  homepage "https://github.com/JHostalek/junior"
  version "1.0.1"
  url "https://github.com/JHostalek/junior/releases/download/v#{version}/junior-macos-arm64-v#{version}.tar.gz"
  sha256 "9db2ca66097c384dd8b079437c8d8e5ba9c37d98f555db0c7ccce508844504a0"
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
