class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.4/tomodo-amd64-0.1.4.tar.gz"
    sha256 "0ac100ce554b3f7594e6ae3b20dc31d3674c5dba0d39c654937ab6797afc4b45"
  elsif Hardware::CPU.arm?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.4/tomodo-arm64-0.1.4.tar.gz"
    sha256 "f09416929eb70939fe56fcd2415fbf7c81d8a748b1030aac3d8483720afec6bc"
  end


  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end
