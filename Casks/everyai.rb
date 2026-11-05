cask "everyai" do
  version "0.1.0-alpha.2"
  sha256 "d57abaf3ee84bb7275b3015cee180d3f506341fcbc80421a661b0fa1f0ac41c0"

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
