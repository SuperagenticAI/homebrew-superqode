class Superqode < Formula
  desc "Superior Quality-Oriented Agentic Software Development"
  homepage "https://super-agentic.ai"
  version "0.1.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.3/superqode-macos-arm64.tar.gz"
    sha256 "0052b092c51d8194884dd30debedbc399fa9558702684df8a96fb426b1d0af40"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.3/superqode-linux-aarch64.tar.gz"
    sha256 "42dcbb454efee5ac1a8f8ed05a965b82761738bf24f643b8cf417895ff86c4b7"
  end

  def install
    bin.install "superqode"
  end

  test do
    system "#{bin}/superqode", "--version"
  end
end
