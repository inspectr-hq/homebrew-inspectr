cask "claude-mcp-switch" do
  version "1.0.0"
  sha256 "194f8df2b34ffb8324e8b484767aa002a93f178003407938051a99e02ff3df4c"

  url "https://github.com/inspectr-hq/claude-mcp-switch/releases/download/v1.0.0/ClaudeMcpSwitch-1.0.0.dmg"
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
