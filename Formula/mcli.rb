class Mcli < Formula
  desc "A simple shortcut menu for shell commands"
  homepage ""
  url "https://github.com/dmirubtsov/mcli/archive/v1.0.1.tar.gz"
  sha256 "0c8136977cef53d1630350d3944d8156ed1929c8bc9339fadd2e5f27c1abf533"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "on"

    (buildpath/"src/github.com/dmirubtsov/mcli").install buildpath.children
    cd "src/github.com/dmirubtsov/mcli" do
      system "go", "build", "-ldflags", "-X main.version=v#{version}",
             "-o", bin/"mcli", "-v", "github.com/dmirubtsov/mcli"
      prefix.install_metafiles
    end
  end

  test do 
    version_output = shell_output("#{bin}/mcli -v")
    assert_match "mcli version v#{version}", version_output
  end
end

