class Ml < Formula
  desc 'ml is a Markdown live viewer that opens .md files in a browser'
  version '0.1.3'
  homepage 'https://github.com/Aliancn/mdlive'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.3/mdlive_v0.1.3_darwin_arm64.zip'
      sha256 '9d51dc4066fc3918fbd01c775fa813dd240fe041e127d49fb02af8b2d74e6427'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.3/mdlive_v0.1.3_darwin_amd64.zip'
      sha256 '28ec0a4af71dfbd0832003646e2328db6a6276ecac90a8825c21016b463481b0'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.3/mdlive_v0.1.3_linux_arm64.tar.gz'
      sha256 '885b3130af24a8af70782bf0c7d8cc7e0a5365da4357c8fc32833b63bdc5166c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Aliancn/mdlive/releases/download/v0.1.3/mdlive_v0.1.3_linux_amd64.tar.gz'
      sha256 'ccec70b350c5c50203ec9a8b092f4a40da98e8cc11a555ffb5b014b20a9ad1ff'
    end
  end

  def install
    bin.install 'ml'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ml --version")
  end
end
