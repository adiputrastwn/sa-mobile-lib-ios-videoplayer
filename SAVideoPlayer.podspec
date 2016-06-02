# Be sure to run `pod lib lint SAVideoPlayer.podspec --allow-warnings'
Pod::Spec.new do |s|
  s.name             = "SAVideoPlayer"
  s.version          = "1.1.0"
  s.summary          = "The SuperAwesome iOS custom video player, built on top of AVPlayer and designed to play VAST ads"
  s.description      = <<-DESC
                       The SuperAwesome iOS custom video player, built on top of AVPlayer and designed to play VAST ads
                       DESC
  s.homepage         = "https://github.com/SuperAwesomeLTD/sa-mobile-lib-ios-videoplayer"
  s.license          = { :type => "GNU GENERAL PUBLIC LICENSE Version 3", :file => "LICENSE" }
  s.author           = { "Gabriel Coman" => "gabriel.coman@superawesome.tv" }
  s.source           = { :git => "https://github.com/SuperAwesomeLTD/sa-mobile-lib-ios-videoplayer.git", :tag => "1.1.0" }
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/*'
  s.resource_bundles = {
    'SAVideoPlayer' => ['Pod/Assets/*']
  }
  s.dependency 'SAUtils'
end
