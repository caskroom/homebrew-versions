cask 'penc' do
  version '0.3.3'
  sha256 '800a9a07e4c998b631b3da776add8b4bb93bcac64974190d328d0fdcb81ecd7f'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/dgurkaynak/Penc/releases/download/#{version}/Penc-#{version}.dmg"
  appcast 'https://deniz.co/penc/appcast.xml'
  name 'Penc'
  homepage 'https://dgurkaynak.github.io/Penc/'

  app 'Penc.app'
end
