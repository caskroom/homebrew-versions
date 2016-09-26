cask 'dash2' do
  version '2.2.6'
  sha256 'a7de5e00528611f86d1024164b1b5d536ce039344b6ca3c211918c7458f7e412'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '7ebd8e2c02a8c003e0fc7098fefc2313fc8bdd670a1ed711d2b89f05b163e0cc'
  name 'Dash'
  homepage 'https://kapeli.com/dash'
  license :commercial

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end
