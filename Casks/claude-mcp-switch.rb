cask "claude-mcp-switch" do
  version "1.1.1"
  sha256 "725ee7e8f9791c74d7cbfe675e5e6d468b1bd887aa20ae93ea3be72535355e10"

  url "https://github.com/inspectr-hq/claude-mcp-switch/releases/download/v1.1.1/ClaudeMcpSwitch-1.1.1.dmg"
  name "Claude MCP Switch"
  desc "macOS menu bar app for managing Claude Desktop MCP servers"
  homepage "https://github.com/inspectr-hq/claude-mcp-switch"

  app "Claude MCP Switch.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Application Support/com.inspectr.ClaudeMcpSwitch",
    "~/Library/Preferences/com.inspectr.ClaudeMcpSwitch.plist",
    "~/Library/Saved Application State/com.inspectr.ClaudeMcpSwitch.savedState",
  ]
end
