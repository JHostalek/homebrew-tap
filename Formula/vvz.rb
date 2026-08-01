class Vvz < Formula
  desc "CLI client for the Czech public procurement journal Věstník veřejných zakázek"
  homepage "https://github.com/JHostalek/vvz-cli"
  url "https://github.com/JHostalek/vvz-cli/releases/download/v0.1.2/vvz-macos-arm64-v0.1.2.tar.gz"
  sha256 "642322e8cf03feb3c715ef6c4aa64afee62e229126231814a492cede52b92a12"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "vvz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vvz --version")
  end
end
