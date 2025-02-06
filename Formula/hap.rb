class Hap < Formula
    desc "Kyma Environment Broker"
    homepage ""
    url "https://github.com/kyma-project/kyma-environment-broker/archive/refs/heads/features/antlr-vs-simple-parser.zip"
    version "0.0.1"
    sha256 "941b24b95c279ea5c9c749052377679a7aa684dcf5439912b16321910f5764f0"
    license "Apache-2.0"
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w",  output: bin/"hap"), "./cmd/parser/"
    end
  
    test do
        system bin/"hap", "--help"
    end
  end
  