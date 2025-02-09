class Hap < Formula
    desc "Kyma Environment Broker"
    homepage ""
    url "https://github.com/kyma-project/kyma-environment-broker/archive/refs/heads/features/hap-v0.0.6.zip"
    version "0.0.6"
    sha256 "076d3925dfed51b5c1718ba2fce0db8bde3e5525fbf84a7f3cdb1245429b56d6"
    license "Apache-2.0"
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w",  output: bin/"hap"), "./cmd/parser/"
    end
  
    test do
        system bin/"hap", "--help"
    end
  end
  