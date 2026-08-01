class Hs < Formula
  desc "CLI wrapper for the Hlídač státu REST API v2"
  homepage "https://github.com/JHostalek/hlidac-statu-cli"
  url "https://github.com/JHostalek/hlidac-statu-cli/releases/download/v0.6.0/hs-macos-arm64-v0.6.0.tar.gz"
  sha256 "a06a180d6c0b73e01e9c7fbc39dba330a71dbaa0062844bdc3ff0473a5f048cf"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "hs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hs --version")
  end
end
