class Superqode < Formula
  desc "Agentic Quality Engineering Platform"
  homepage "https://super-agentic.ai"
  url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.0/superqode-macos-x64"
  version "0.1.0"
  sha256 "8713d65f758fe78581521f46aa3d2069182a35e33034c8370d83e5a171525436"

  def install
    bin.install "superqode-macos-x64" => "superqode"
  end

  test do
    system "#{bin}/superqode", "--version"
  end
end
