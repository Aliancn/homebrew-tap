class Ml < Formula
  desc 'ml is a Markdown live viewer that opens .md files in a browser'
  version '0.1.2'
  homepage 'https://github.com/Aliancn/mdlive'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.2/mdlive_v0.1.2_darwin_arm64.zip'
      sha256 '41b9b620404ed25e5a0fd66f289e86a00a4f4e7cc17c411b5e45ce97bb412aad'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.2/mdlive_v0.1.2_darwin_amd64.zip'
      sha256 'e001741d837156580ebe3fe0a832fa5b8619b0e104396274ca389e2c15840dc8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.2/mdlive_v0.1.2_linux_arm64.tar.gz'
      sha256 'e758a3386fc206ede10a128a82b0793ac6cca2f03942ce20703433c3929bfd13'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.2/mdlive_v0.1.2_linux_amd64.tar.gz'
      sha256 'fecaa4b1dd3b6e982c8b5be99de01d06e062e2702fa0d09ab64f55302f0e020b'
    end
  end

  def install
    bin.install 'ml'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ml --version")
  end
end
