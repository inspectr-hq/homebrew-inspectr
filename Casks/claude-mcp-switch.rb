cask "claude-mcp-switch" do
  version "1.0.1"
  sha256 "6d0e70b33adda87cd34e2ba69a2f83d58cb5cc52cb86d36b2299d76867a0f55b"

  url "https://github.com/inspectr-hq/claude-mcp-switch/releases/download/v1.0.1/ClaudeMcpSwitch-1.0.1.dmg"
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
