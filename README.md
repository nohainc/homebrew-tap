# Syntila Homebrew tap

## Syntila Workspace macOS preview

This Apple Silicon preview includes the Workspace GUI, `syntila` CLI and worker engine. It is signed with an Apple Development certificate and is **not notarized**. Gatekeeper rejects the downloaded GUI and command-line binaries under its normal checks. Do not use this preview if you need Apple's normal Gatekeeper verification.

Install with:

```sh
brew install --cask nohainc/tap/syntila-workspace-preview
```

Homebrew applies quarantine to the downloaded preview. If you trust this build and choose to bypass Gatekeeper checks for these installed files, run:

```sh
xattr -dr com.apple.quarantine "/Applications/Syntila Workspace.app"
xattr -dr com.apple.quarantine "$(brew --prefix)/lib/syntila-workspace-preview"
```

If you selected a different app directory with `--appdir`, use that path for the first command. Removing quarantine bypasses Gatekeeper's first-launch checks for these files. It does not notarize the software or turn its development certificate into a Developer ID certificate. Do not disable Gatekeeper system-wide.

The app is installed in Applications and the CLI is available as `syntila`. The GUI checks `~/.local/bin/syntila` before the Homebrew CLI; an existing executable there can cause it to use a different version. Move or update that older installation if necessary, preserving its data. If another package already provides `syntila` or an app with the same name, resolve the conflict before installation. The user service is not automatically installed or started; use `syntila service install` when ready. An upgrade replaces the program files and does not erase Workspace data, though a running service may need to be restarted with `syntila service restart`. Uninstall with `brew uninstall --cask syntila-workspace-preview` after stopping the service if installed.

Only Apple Silicon is supported by this preview. A future public release should use Developer ID signing and Apple notarization.
