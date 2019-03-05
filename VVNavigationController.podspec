#
# Be sure to run `pod lib lint VVNavigationController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VVNavigationController'
  s.version          = '0.1.0'
  s.summary          = 'A short description of VVNavigationController.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/qiuncheng/VVNavigationController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiuncheng' => 'qiuncheng@gmail.com' }
  s.source           = { :git => 'https://github.com/qiuncheng/VVNavigationController.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/vsccw'

  s.ios.deployment_target = '8.0'

  s.source_files = 'VVNavigationController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VVNavigationController' => ['VVNavigationController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
