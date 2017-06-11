Pod::Spec.new do |s|
  s.name             = 'RPImageLoader'
  s.version          = '0.9'
  s.summary          = 'Image loading made easy.'

  s.description      = <<-DESC
  RPImageLoader is a wrapper for asynchronous image-loading libraries for iOS.
                       DESC

  s.homepage         = 'https://github.com/RedP4nda/RPImageLoader'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mrcloud' => 'florianp37@me.com' }
  s.source           = { :git => 'https://github.com/RedP4nda/RPImageLoader.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |a|
    a.source_files = 'RPImageLoader/Classes/Core/**/*'
  end

  s.subspec 'KingFisher' do |a|
    a.source_files = 'RPImageLoader/Classes/KingFisher/**/*'
    a.dependency 'RPImageLoader/Core'
    a.dependency 'Kingfisher', '~> 3.5.0'
    a.xcconfig =  { 'OTHER_SWIFT_FLAGS' => '$(inherited) -DPiOSKingfisher' }
  end

  s.subspec 'Nuke' do |a|
    a.source_files = 'RPImageLoader/Classes/Nuke/**/*'
    a.dependency 'RPImageLoader/Core'
    a.dependency 'Nuke', '~> 5.1'
    a.xcconfig =  { 'OTHER_SWIFT_FLAGS' => '$(inherited) -DPiOSNuke' }
  end

  s.subspec 'SDWebImage' do |a|
    a.source_files = 'RPImageLoader/Classes/SDWebImage/**/*'
    a.dependency 'RPImageLoader/Core'
    a.dependency 'SDWebImage', '~> 4.0.0'
    a.xcconfig =  { 'OTHER_SWIFT_FLAGS' => '$(inherited) -DPiOSSDWebImage' }
  end

end
