class Ml < Formula
  desc 'ml is a Markdown live viewer that opens .md files in a browser'
  version '0.1.0'
  homepage 'https://github.com/Aliancn/mdlive'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.0/mdlive_v0.1.0_darwin_arm64.zip'
      sha256 '1f925c5ba977ea8f80e49fa21f52e87024397c1a4727231dc6b002da7a334fe4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.0/mdlive_v0.1.0_darwin_amd64.zip'
      sha256 '9dd406af36b2372dc071d1e6102bbe9feaa3ad0d86ed2014d1493486dacd494b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.0/mdlive_v0.1.0_linux_arm64.tar.gz'
      sha256 'b578becb23dfc50c60c7260cf73b47545fb17f2623ef99352f4ec84a5f550d6b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.0/mdlive_v0.1.0_linux_amd64.tar.gz'
      sha256 'ede2fa756abc85a857ddfda4d7ea164515ebc5f38dcd813de073beba82ad4faf'
    end
  end

  def install
    bin.install 'ml'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ml --version")
  end
end
