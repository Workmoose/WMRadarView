Pod::Spec.new do |s|
  s.name             = 'WMRadarView'
  s.version          = '0.1.0'
  s.summary          = 'A simple customizable radarView written in Swift 3'

  s.description      = <<-DESC
A simple customizable radarView written in Swift 3 using EasyAnimation.
                       DESC

  s.homepage         = 'https://github.com/Workmoose/WMRadarView'
  s.license          = { :type => 'Beerware', :text => 'If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.' }
  s.author           = { 'Jaap Wijnen' => 'wijnen.jaap@gmail.com' }
  s.source           = { :git => 'https://github.com/Workmoose/WMRadarView.git', :tag => s.version.to_s }

  s.dependency 'EasyAnimation', '~> 1.1'

  s.ios.deployment_target = '10.0'
  s.source_files = 'WMRadarView/WMRadarView.swift'

end
