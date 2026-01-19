class Superqode < Formula
  desc "Agentic Quality Engineering Platform"
  homepage "https://super-agentic.ai"
  url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.0/superqode-macos-x64"
  version "0.1.0"
  sha256 "b47eacec00a6b2179d2d48a01a0f6e95a1fc4832b370c2e96787c54992c75e1f"

  def install
    bin.install "superqode-macos-x64" => "superqode"
  end

  test do
    system "#{bin}/superqode", "--version"
  end
end
