cask "claude-mcp-switch" do
  version "1.0.3"
  sha256 "4dad5a4086ff8dcd989041f3a6b322e19137e68d1475e15eed2fdd7af2726c4c"

  url "https://github.com/inspectr-hq/claude-mcp-switch/releases/download/v1.0.3/ClaudeMcpSwitch-1.0.3.dmg"
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
