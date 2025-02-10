class Hap < Formula
    desc "Kyma Environment Broker"
    homepage ""
    url "https://github.com/kyma-project/kyma-environment-broker/archive/refs/heads/features/hap-v0.0.8.zip"
    version "0.0.8"
    sha256 "f752331f6b64bd225f3a24104fda3bba847d1eb4925bdb831bdcf930646b6c63"
    license "Apache-2.0"
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w",  output: bin/"hap"), "./cmd/parser/"
    end
  
    test do
        system bin/"hap", "--help"
    end
  end
  