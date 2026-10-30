cask "claude-mcp-switch" do
  version ".1.1.0"
  sha256 "095cb4677a480a693b57dc7df1f0fd6b32e1172a6e3caa7d6a552567efcd981b"

  url "https://github.com/inspectr-hq/claude-mcp-switch/releases/download/v.1.1.0/ClaudeMcpSwitch-.1.1.0.dmg"
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
