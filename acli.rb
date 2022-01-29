# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acli < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/k8scat/articli"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k8scat/articli/releases/download/v0.3.7/acli-darwin-arm64.tar.gz"
      sha256 "1a63c151a6cc471b7caa4235086b65da9204a996f560720bd17382e223f7e627"

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
      url "https://github.com/k8scat/articli/releases/download/v0.3.7/acli-darwin-amd64.tar.gz"
      sha256 "9b303953287bf2084e5ac862c6888a5571ea0fb3910d9042192d7df5a1b1746b"

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
      url "https://github.com/k8scat/articli/releases/download/v0.3.7/acli-linux-arm64.tar.gz"
      sha256 "7657ce433ddf4923e2eac60c598805f13ec58c4f43f696cc623997d28d6b1f00"

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
      url "https://github.com/k8scat/articli/releases/download/v0.3.7/acli-linux-amd64.tar.gz"
      sha256 "ebc1e4db65504ccab56276f9b1629afc3239bb2b2406679ee1296a2590d96ef4"

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
