class Nuclease < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nuclease"
  url "https://github.com/jackdougle/nuclease/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "416e68fbc93eba69136129e0796e38c1f0260834826dfc0d2526d5835b19e42f"
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
