class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  url "https://github.com/yuviherziger/tomodo/releases/download/0.1.0/tomodo-0.1.0.tar.gz"
  sha256 "9c29e2d2b91f5109c978950691acb8347772390373b9a67425eb7265748ff20b"
  license "MIT"

  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end

