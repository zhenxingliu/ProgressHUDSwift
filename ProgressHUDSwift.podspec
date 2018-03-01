#
# Be sure to run `pod lib lint ProgressHUDSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ProgressHUDSwift'
  s.version          = '0.1.1'
  s.summary          = '使用Swift4改写ProgressHUD，并加入一些自己特定的使用方法.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        使用Swift4改写ProgressHUD，并加入一些自己特定的使用方法.满足Swift使用者使用。
                       DESC

  s.homepage         = 'https://github.com/zhenxingliu/ProgressHUDSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhenxingliu' => '5210167@qq.com' }
  s.source           = { :git => 'https://github.com/zhenxingliu/ProgressHUDSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ProgressHUDSwift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ProgressHUDSwift' => ['ProgressHUDSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
