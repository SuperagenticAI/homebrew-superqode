class Superqode < Formula
  desc "Agentic Quality Engineering Platform"
  homepage "https://super-agentic.ai"
  url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.0/superqode-macos-x64"
  version "0.1.0"
  sha256 "efd8331af56009df094f27d0b4e425dbaf5d934ea69c86cfb1932e3eccfed982"

  def install
    bin.install "superqode-macos-x64" => "superqode"
  end

  test do
    system "#{bin}/superqode", "--version"
  end
end
