class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  url "https://github.com/yuviherziger/tomodo/releases/download/0.1.1/tomodo-0.1.1.tar.gz"
  sha256 "a10c7ecbac5cbe832a3e6bf8ee454eb22b6d584030e962171d9730ca6db60847"
  license "MIT"

  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end

