class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.3/tomodo-amd64-0.1.3.tar.gz"
    sha256 "7436fa3f779cdaa9a3dee00e53b597049ecb113af9250f7cfd18ad9fd907a248"
  elsif Hardware::CPU.arm?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.3/tomodo-arm64-0.1.3.tar.gz"
    sha256 "679a5be0db105b83501ac61f6ccacefb1bb00423ba0d00ba3fc59b7a80aa737a"
  end


  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end
