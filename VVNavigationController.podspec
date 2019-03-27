Pod::Spec.new do |s|
  s.name             = 'VVNavigationController'
  s.version          = '0.0.2'
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
  
  s.swift_version = '5.0'
end
