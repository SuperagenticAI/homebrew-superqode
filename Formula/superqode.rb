class Superqode < Formula
  desc "Super Quality Engineering for Agentic Coding Teams"
  homepage "https://super-agentic.ai"
  version "0.1.4"

  if OS.mac?
    url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.4/superqode-0.1.4-macos-arm64.tar.gz"
    sha256 "d7bb45c842191c6a441e8a9e04a33f769e83515ac5e033eb510b4ad761d67267"
  elsif OS.linux?
    url "https://github.com/SuperagenticAI/superqode/releases/download/v0.1.4/superqode-0.1.4-linux-arm64.tar.gz"
    sha256 "1b6dca6a02172c58c3a595995fed81efd3ba2433e6d567aa2a3f11652f465672"
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
