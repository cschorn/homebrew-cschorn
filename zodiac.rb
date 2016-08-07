class Zodiac < Formula
  desc "ZODIAC is a static website generator powered by sh and awk."
  homepage "https://github.com/nuex/zodiac"
  url "https://github.com/nuex/zodiac/archive/v0.2.5.tar.gz"
  sha256 "8e17b9876a151cbffa6ddc6843e8443cf09e20ca46eb722d38882ee59a22657a"

  def install
    system "make", "all", "PREFIX=#{prefix}", "AWKLIB=#{lib}"

    bin.install "bin/zod"
    bin.install "bin/zod-render"
    bin.install "bin/zod-copy"
    bin.install "bin/zod-internal"

    lib.install Dir["lib/*.awk"]
  end

  test do
    system "true"
  end
end
