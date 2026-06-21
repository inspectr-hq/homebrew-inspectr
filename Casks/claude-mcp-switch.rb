cask "claude-mcp-switch" do
  version "1.0.2"
  sha256 "9ff616cfa0fda8aee492ed2e48414b829ac88abd9350cf92d939eeeb7f868bb6"

  url "https://github.com/inspectr-hq/claude-mcp-switch/releases/download/v1.0.2/ClaudeMcpSwitch-1.0.2.dmg"
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
