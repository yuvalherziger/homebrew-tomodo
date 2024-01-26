class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  url "https://github.com/yuviherziger/tomodo/releases/download/0.1.0-rc.1/tomodo-0.1.0-rc.1.tar.gz"
  sha256 "318b8f5cbbc755421bad62c35b5e80112e65b480d69c94f0de34b947100bc7a0"
  license "MIT"

  def install
    bin.install "tomodo"
  end
end

