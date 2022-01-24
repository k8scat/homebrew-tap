# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acli < Formula
  desc "Manage articles in multi platforms."
  homepage "https://github.com/k8scat/articli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k8scat/articli/releases/download/v0.2.0/acli-darwin-amd64.tar.gz"
      sha256 "bf3febc7188cbd1fab054abd38da59a52e8531e5692ac938580194afbc5b6aaa"

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
    if Hardware::CPU.arm?
      url "https://github.com/k8scat/articli/releases/download/v0.2.0/acli-darwin-arm64.tar.gz"
      sha256 "f2f3f7a106bab3f664cc6427bbbf7c859ab9a7e02fa16d9d0a6fb8c7045666bd"

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
    if Hardware::CPU.intel?
      url "https://github.com/k8scat/articli/releases/download/v0.2.0/acli-linux-amd64.tar.gz"
      sha256 "750943a1b16145bbe73756eb5b0099c78c0a661b07c5eadc41a122305adf9e3c"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/k8scat/articli/releases/download/v0.2.0/acli-linux-arm64.tar.gz"
      sha256 "70cc5e97dc54041de297b2f13dc4162db2e94211c5d7883439c8e1eafe8d76e1"

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

  depends_on "git"

  test do
    system "#{bin}/acli version"
  end
end
