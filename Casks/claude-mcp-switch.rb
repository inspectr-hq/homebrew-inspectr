cask "claude-mcp-switch" do
  version "0.1.0"
  sha256 "0beb98f37c68e812772190d716a60f9e9c49801573b1896ce2105d06a4d7256c"

  url "https://github.com/inspectr-hq/claude-mcp-switch/releases/download/v0.1.0/ClaudeMcpSwitch-0.1.0.dmg"
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
