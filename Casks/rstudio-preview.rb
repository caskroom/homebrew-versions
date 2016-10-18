cask 'rstudio-preview' do
  version '1.0.43'
  sha256 '882c07939ab191bc34f79b5e5561272b7c0692285d5070146ffc3d969d460a55'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
