class Hap < Formula
    desc "Kyma Environment Broker"
    homepage ""
    url "https://github.com/kyma-project/kyma-environment-broker/archive/refs/heads/features/hap-v0.0.10.zip"
    version "0.0.10"
    sha256 "48cc8d740e2106be0485dabc233f4628881cf688c422b5d5f07355b17dc328a7"
    license "Apache-2.0"
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w",  output: bin/"hap"), "./cmd/parser/"
    end
  
    test do
        system bin/"hap", "--help"
    end
  end
  