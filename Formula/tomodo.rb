class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.6/tomodo-amd64-0.1.6.tar.gz"
    sha256 "513b0921e8a02568aca602b4ddd02501ab8dac58c81cd933f104711f1fe42675"
  elsif Hardware::CPU.arm?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.6/tomodo-arm64-0.1.6.tar.gz"
    sha256 "a1d4ebb3d9fb77e4b3a7343fed33b7b652d19efced0599db5804ca9956b5d7b0"
  end


  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end
