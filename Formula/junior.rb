class Junior < Formula
  desc "Autonomous software development CLI - queue tasks and execute via headless Claude Code"
  homepage "https://github.com/JHostalek/junior"
  version "1.0.0"
  url "https://github.com/JHostalek/junior/releases/download/v#{version}/junior-macos-arm64-v#{version}.tar.gz"
  sha256 "PLACEHOLDER"
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
