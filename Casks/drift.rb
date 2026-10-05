cask "drift" do
  version "0.7.5"
  sha256 "e5d34fc4d5b7c6ea3173c0addec8d0cb43fc80087b1d7313fdaffc91434ce2a8"

  url "https://github.com/CutWire-Studios/Drift/releases/download/v#{version}/Drift-#{version}-arm64.dmg"
  name "Drift"
  desc "Desktop video editor"
  homepage "https://github.com/CutWire-Studios/Drift"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Drift.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/Drift.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/CutWire Drift",
    "~/Library/Preferences/com.cutwire-drift.CutWire Drift.plist",
    "~/Library/Saved Application State/org.cutwire.Drift.savedState",
  ]

  caveats <<~EOS
    Drift is not notarized by Apple. If macOS prevents opening it, run:
      xattr -dr com.apple.quarantine #{appdir}/Drift.app
  EOS
end
