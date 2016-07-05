cask 'iterm2-legacy' do
  # note: "2" is not a version number, but indicates a different vendor
  version '2.1.4'
  sha256 '1062b83e7808dc1e13362f4a83ef770e1c24ea4ae090d1346b49f6196e9064cd'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.gsub('.', '_')}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '6f840c00431993ab1151c01facfd8d4dfbb13a94589657a6cb5d72505db3f448'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= :lion'
  depends_on arch: :intel

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
