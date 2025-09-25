class Nuclease < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nuclease"
  url "https://github.com/jackdougle/nuclease/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "6cdee8356a27e482ea82b181277ae0e2ffdd4c1f852f3c1b958556af7a8d8dc9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Simple version check to ensure it was installed properly
    assert_match "nuclease", shell_output("#{bin}/nuclease --version")
  end
end
