cask 'tunnelblick-beta' do
  version '3.7.9beta05,5240'
  sha256 'f089849eff85908f655479b128d36ba7021ef608ea67e08c392e9ffe387bf03e'

  # github.com/Tunnelblick/Tunnelblick was verified as official when first introduced to the cask
  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.before_comma}/Tunnelblick_#{version.before_comma}_build_#{version.after_comma}.dmg"
  appcast 'https://github.com/Tunnelblick/Tunnelblick/releases.atom'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net/'

  auto_updates true

  app 'Tunnelblick.app'

  uninstall_preflight do
    set_ownership "#{appdir}/Tunnelblick.app"
  end

  uninstall launchctl: [
                         'net.tunnelblick.tunnelblick.LaunchAtLogin',
                         'net.tunnelblick.tunnelblick.tunnelblickd',
                       ],
            quit:      'net.tunnelblick.tunnelblick'

  zap trash: [
               '/Library/Application Support/Tunnelblick',
               '~/Library/Application Support/Tunnelblick',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/net.tunnelblick.tunnelblick.help*',
               '~/Library/Caches/net.tunnelblick.tunnelblick',
               '~/Library/Preferences/net.tunnelblick.tunnelblick.plist',
             ]

  caveats <<~EOS
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
