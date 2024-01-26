class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  url "https://github.com/yuviherziger/tomodo/releases/download/0.1.0-rc.2/tomodo-0.1.0-rc.2.tar.gz"
  sha256 "7d26217eddeb0d812710c13f250c6a5aa99e569e05afa212e68963c4b9c6d3dc"
  license "MIT"

  def install
    bin.install "tomodo"
    bin.install Dir["_internal"]
  end
end

