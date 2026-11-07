cask "everyai" do
  version "0.1.0-alpha.5"
  sha256 "2757eb83b722229d31e2d32bb1a0a293c01751c69f55b8100f62d96c294e9889"

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
