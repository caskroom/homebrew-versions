cask "slack-beta" do
  version "4.10.0-beta2"
  sha256 "3720e33baa831d8ce00b4984d9177180168a682d679f7f81a70214723b553d94"

  # downloads.slack-edge.com/ was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/releases/macos/#{version}/beta/x64/Slack-#{version}-macOS.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://slack.com/ssb/download-osx-beta"
  name "Slack"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/beta/osx"

  auto_updates true
  conflicts_with cask: "slack"

  app "Slack.app"

  uninstall quit: "com.tinyspeck.slackmacgap"

  zap trash: [
    "~/Library/Application Scripts/com.tinyspeck.slackmacgap",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*",
    "~/Library/Application Support/Slack",
    "~/Library/Caches/com.tinyspeck.slackmacgap",
    "~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt",
    "~/Library/Containers/com.tinyspeck.slackmacgap",
    "~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService",
    "~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies",
    "~/Library/Group Containers/*.com.tinyspeck.slackmacgap",
    "~/Library/Group Containers/*.slack",
    "~/Library/Logs/Slack",
    "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.plist",
    "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
    "~/Library/WebKit/com.tinyspeck.slackmacgap",
  ]
end
