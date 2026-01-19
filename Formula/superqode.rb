class Superqode < Formula
  desc "Agentic Quality Engineering Platform"
  homepage "https://super-agentic.ai"
  url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.0/superqode-macos-x64"
  version "0.1.0"
  sha256 "60863234be4ed09ecae4de1381eb1b5ff1e94342c7f5d34f0d9802f6d5841395"

  def install
    bin.install "superqode-macos-x64" => "superqode"
  end

  test do
    system "#{bin}/superqode", "--version"
  end
end
