class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.5/tomodo-amd64-0.1.5.tar.gz"
    sha256 "5af1abf9c3804f8d63dce6181615304c2cabcc70f16c0820c99d3cde3668daed"
  elsif Hardware::CPU.arm?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.5/tomodo-arm64-0.1.5.tar.gz"
    sha256 "8ac28a30ac7023555385d57608e2a226057264b29c53fd9696402594e365b4a2"
  end


  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end
