cask "everyai" do
  version "0.1.0-alpha.3"
  sha256 "9db57cc613ccfc9bf768f21d78f375b97b1691a3d21ce1ac1c28b7f8f564839e"

  url "https://github.com/xuckless/everyai-mono/releases/download/v#{version}/EveryAI-#{version}.dmg"
  name "EveryAI"
  desc "Every coding agent, one workspace"
  homepage "https://github.com/xuckless/everyai-mono"

  livecheck do
    url :url
    strategy :github_releases
  end

  # The app updates itself (Sparkle); brew upgrade --greedy still works.
  auto_updates true
  depends_on macos: ">= :sequoia"

  app "EveryAI.app"

  zap trash: [
    "~/Library/Application Support/dev.alidirect.everyai",
    "~/Library/Caches/dev.alidirect.everyai",
    "~/Library/Preferences/dev.alidirect.everyai.plist",
    "~/Library/Saved Application State/dev.alidirect.everyai.savedState",
  ]
end
