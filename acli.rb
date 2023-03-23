# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acli < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/k8scat/articli"
  version "1.0.4"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k8scat/articli/releases/download/v1.0.4/articli_1.0.4_darwin_arm64.tar.gz"
      sha256 "ba7f2c015635e330041c3fdc970661f130b4dc8074f35348fe5194a2fe5a7166"

      def install
        bin.install "acli"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "bash")
        (bash_completion/"acli").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "zsh")
        (zsh_completion/"_acli").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k8scat/articli/releases/download/v1.0.4/articli_1.0.4_darwin_amd64.tar.gz"
      sha256 "bf1181079febc6f8b4c98f194e1bfa35373cda4c6d102a3fbc8f65d8c4a82520"

      def install
        bin.install "acli"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "bash")
        (bash_completion/"acli").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "zsh")
        (zsh_completion/"_acli").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/k8scat/articli/releases/download/v1.0.4/articli_1.0.4_linux_arm64.tar.gz"
      sha256 "ff5b402245f73d08da654f21650060a6895895cc74a1b654c7d86079db2f60d7"

      def install
        bin.install "acli"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "bash")
        (bash_completion/"acli").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "zsh")
        (zsh_completion/"_acli").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k8scat/articli/releases/download/v1.0.4/articli_1.0.4_linux_amd64.tar.gz"
      sha256 "dc1be7be80da17fef8d5e2f1c5e86daea3a226f3c3d2b96b0a4c55ff33d92b05"

      def install
        bin.install "acli"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "bash")
        (bash_completion/"acli").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "zsh")
        (zsh_completion/"_acli").write output
      end
    end
  end

  test do
    system "#{bin}/acli version"
  end
end
