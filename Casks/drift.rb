cask "drift" do
  version "0.7.0"
  sha256 "0349607baeb44cd605b685f0389d3144687c5bdadf8b5fc0905737f3688447e8"

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
