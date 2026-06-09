cask "pulse" do
  version "0.1.0"
  sha256 "REPLACE_WITH_REAL_SHA256"

  url "https://github.com/inspectr-hq/pulse-app/releases/download/v#{version}/Pulse-#{version}.dmg"
  name "Pulse"
  desc "Inspectr Pulse App - Mac menu bar app for monitoring APIs, MCP servers, websites and health endpoints"
  homepage "https://github.com/inspectr-hq/pulse-app"

  app "Pulse.app"
end
