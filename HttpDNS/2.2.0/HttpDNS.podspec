#
# Be sure to run `pod lib lint HttpDNS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HttpDNS'
  s.version          = '2.2.0'
  s.summary          = 'A short description of HttpDNS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/frankdlink/HttpDNS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'frankdlink' => 'frank@dlink.cloud' }
  s.source          = { :http => "https://deeplink-dev-ios.s3.ap-southeast-1.amazonaws.com/ios-frameworks/HttpDNS/2.2.0/HttpDNS.xcframework.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  
  # open this on local debug
  #  s.source_files = 'HttpDNS/Classes/**/*'
  # close this on local debug
  s.vendored_frameworks = "HttpDNS.xcframework"
  
  s.xcconfig = {
      'ENABLE_BITCODE' => 'NO',
  }

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7 armv7s',
    'SKIP_INSTALL' => 'NO',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7 armv7s'
  }

  
  # s.resource_bundles = {
  #   'HttpDNS' => ['HttpDNS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'Alamofire'
  s.dependency 'AWSCore'
end
