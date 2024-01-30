class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.2/tomodo-amd64-0.1.2.tar.gz"
    sha256 "ec333231f1c03439d23853043120fc133e59e12264b539823039ad07e1e38477"
  elsif Hardware::CPU.arm?
    url "https://github.com/yuviherziger/tomodo/releases/download/0.1.2/tomodo-arm64-0.1.2.tar.gz"
    sha256 "2d8d583409925777e830353e08dda90bcd8ebef877acb43f7b1141d0856474f4"
  end


  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end
