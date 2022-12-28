# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acli < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/k8scat/articli"
  version "0.6.3"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k8scat/articli/releases/download/v0.6.3/articli_0.6.3_darwin_amd64.tar.gz"
      sha256 "01fae87cf631ccf5556e9faef2a8b73b1fac2a750409830a123bef642dbb58ae"

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
      url "https://github.com/k8scat/articli/releases/download/v0.6.3/articli_0.6.3_darwin_arm64.tar.gz"
      sha256 "261fe0293c2f5138e75067bdd10c4d9c6de07de84c403610a2c8def1404fd892"

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
      url "https://github.com/k8scat/articli/releases/download/v0.6.3/articli_0.6.3_linux_arm64.tar.gz"
      sha256 "9ebda75b761bc6611432bb8d5adef3d460b44a02e1c813d5a1814266325ef9ae"

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
      url "https://github.com/k8scat/articli/releases/download/v0.6.3/articli_0.6.3_linux_amd64.tar.gz"
      sha256 "5ffeceb0f4cd221dd10b06b9d509a9dc33166da7b11abec46c2a67cb88b9553a"

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
