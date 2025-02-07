class Hap < Formula
    desc "Kyma Environment Broker"
    homepage ""
    url "https://github.com/kyma-project/kyma-environment-broker/archive/refs/heads/features/antlr-vs-simple-parser-for-brew.zip"
    version "0.0.3"
    sha256 "678de4341abdc758328d33f93a7360f98c0c8e1429c23c92993a1fd0629ebaec"
    license "Apache-2.0"
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w",  output: bin/"hap"), "./cmd/parser/"
    end
  
    test do
        system bin/"hap", "--help"
    end
  end
  