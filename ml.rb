class Ml < Formula
  desc 'ml is a Markdown live viewer that opens .md files in a browser'
  version '0.2.0'
  homepage 'https://github.com/Aliancn/mdlive'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.2.0/mdlive_v0.2.0_darwin_arm64.zip'
      sha256 '225fc8a675f03f64153dd9f942de6d335116091094c3fa37159a2f2e75d256e2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.2.0/mdlive_v0.2.0_darwin_amd64.zip'
      sha256 'd36146d8c1ccb8bb7bae49d7179b0c0028933cf9a24f4dd13d9c3bed9d8e71d3'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.2.0/mdlive_v0.2.0_linux_arm64.tar.gz'
      sha256 '44264965b82a12ed99c8d471bd221bc1b1dfe331e8fb23efcdcaf8d583b97b0c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.2.0/mdlive_v0.2.0_linux_amd64.tar.gz'
      sha256 '0dd1ee3cae210276935c7e1c3f8a1836c92762672f63ce1bf6e0159a1a1fbdae'
    end
  end

  def install
    bin.install 'ml'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ml --version")
  end
end
