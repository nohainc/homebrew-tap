cask "syntila-workspace-preview" do
  version "1.0.17"
  sha256 "a75adf0eb51b85e97e9c213fd908b31731c663bb3f4c8f73ab4479d4dfb864f0"

  url "https://github.com/nohainc/syntila/releases/download/workspace-macos-brew-v#{version}-preview.1/Syntila-Workspace-#{version}-macos-arm64-homebrew.zip"
  name "Syntila Workspace Preview"
  desc "Workspace GUI, CLI, and worker engine"
  homepage "https://github.com/nohainc/syntila"

  depends_on arch: :arm64

  app "Syntila Workspace.app"
  artifact "payload", target: "#{HOMEBREW_PREFIX}/lib/syntila-workspace-preview"
  binary "#{HOMEBREW_PREFIX}/lib/syntila-workspace-preview/syntila", target: "syntila"

  caveats <<~EOS
    This preview is signed with an Apple Development certificate and is not
    notarized. Gatekeeper rejects the app and command-line tools by default.
    See the tap README for installation and security details.
  EOS
end
