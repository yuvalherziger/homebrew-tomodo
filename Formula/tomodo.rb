class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  url "https://github.com/yuviherziger/tomodo/releases/download/0.1.0-rc.3/tomodo-0.1.0-rc.3.tar.gz"
  sha256 "fd7c42f7d7a2004c17524b835f45ac2db98f0d0c6387e6acfbb80f2fdb9854b6"
  license "MIT"

  def install
    bin.install "tomodo"
    lib.install Dir["_internal"]
    # lib.install Dir["*"]
    # libexec.install Dir["*"]
    # bin.write_exec_script libexec/"script.sh"
  end
end

