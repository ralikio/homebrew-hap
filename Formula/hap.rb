class Hap < Formula
    desc "Kyma Environment Broker"
    homepage ""
    url "https://github.com/kyma-project/kyma-environment-broker/archive/refs/heads/features/antlr-vs-simple-parser.zip"
    version "0.0.2"
    sha256 "0bf975cc2547d7a6af1b96e7a8fb49377b1da55af4d0ec013b9db0cac1fe59a8"
    license "Apache-2.0"
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w",  output: bin/"hap"), "./cmd/parser/"
    end
  
    test do
        system bin/"hap", "--help"
    end
  end
  