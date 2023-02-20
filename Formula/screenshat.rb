require "language/node"

class Screenshat < Formula
  desc "Take screenshots and videos of a website at different widths"
  homepage "https://github.com/adamwolf/screenshat#readme"
  url "https://registry.npmjs.org/screenshat/-/screenshat-1.0.0.tgz"
  sha256 "205df68fef7248c0256d11ca3848c70a0a7525289be8cf599d93cf00139f7f71"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"
  depends_on "ffmpeg" => :recommended # You can pass --without-ffmpeg

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    mkdir_p "output"
    shell_output("${bin}/screenshat --url https://google.com --min-width 320 --max-width 400 " \
                 "--output-gif --output-dir output")
    assert_predicate testpath/"output.txt", :exist?
  end
end
