# This formula is updated automatically when new releases are published to microwave-cli.
# Do not edit the url/sha256 fields manually — they are managed by the release workflow.
class Microwave < Formula
  desc "Command-line interface for the Microwave API"
  homepage "https://microwave.dev"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      # darwin_arm64 — updated automatically on release
      url "https://github.com/microwave-sh/microwave-cli/releases/download/v0.0.0/microwave_Darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      # darwin_amd64 — updated automatically on release
      url "https://github.com/microwave-sh/microwave-cli/releases/download/v0.0.0/microwave_Darwin_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      # linux_arm64 — updated automatically on release
      url "https://github.com/microwave-sh/microwave-cli/releases/download/v0.0.0/microwave_Linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      # linux_amd64 — updated automatically on release
      url "https://github.com/microwave-sh/microwave-cli/releases/download/v0.0.0/microwave_Linux_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "microwave"
  end

  test do
    system "#{bin}/microwave", "--version"
  end
end
