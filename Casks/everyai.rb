cask "everyai" do
  version "0.1.0-alpha.1"
  sha256 "114dc199c084139ea82e6c38d549d0ac5d99a4bfc018ae5bed584ce5fed0ba81"

  url "https://github.com/xuckless/everyai-mono/releases/download/v#{version}/EveryAI-#{version}.dmg"
  name "EveryAI"
  desc "Every coding agent, one workspace"
  homepage "https://github.com/xuckless/everyai-mono"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :sequoia"

  app "EveryAI.app"

  zap trash: [
    "~/Library/Application Support/dev.alidirect.everyai",
    "~/Library/Caches/dev.alidirect.everyai",
    "~/Library/Preferences/dev.alidirect.everyai.plist",
    "~/Library/Saved Application State/dev.alidirect.everyai.savedState",
  ]
end
