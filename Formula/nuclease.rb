class Nuclease < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nuclease"
  url "https://github.com/jackdougle/nuclease/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6cb85ee475aaf565b0d52791e488b8d373b9ad950d1e4f2c184c8661eeb79843"
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
