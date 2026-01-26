class Superqode < Formula
  desc "Super Quality Engineering for Agentic Coding Teams"
  homepage "https://super-agentic.ai"
  version "0.1.4"

  if OS.mac?
    url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.4/superqode-0.1.4-macos-arm64.tar.gz"
    sha256 "25eb26a060181f76096b890ae9300d7aee4db5d0cff83acf0a99527ef2903a87"
  elsif OS.linux?
    url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.4/superqode-0.1.4-linux-arm64.tar.gz"
    sha256 "732d6b777953f64a438ccd116dbd42b9ee2bd59f29269a47db86e8345f351444"
  end

  def install
    # Install the entire app directory (extracted from the tarball) to libexec
    # The tarball contains the 'superqode' folder at its root.
    libexec.install Dir["*"]
    
    # The executable is inside the extracted superqode folder.
    # We create a symlink in the standard Homebrew bin directory.
    bin.install_symlink libexec/"superqode"
  end

  test do
    system "#{bin}/superqode", "--version"
  end
end