# Be sure to run `pod lib lint AnalyticsKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnalyticsKit'
  s.version          = '1.9.0'
  s.summary          = 'A library for collecting analytics events in iOS applications'

  s.description      = <<-DESC
AnalyticsKit is a lightweight analytics library for iOS applications that provides:
- Event tracking and reporting
- Custom parameter support
- Automatic time correction
- Data persistence with WCDB
- Thread-safe operations
DESC

  s.homepage         = 'https://github.com/DLinkSDK/analytics-sdk-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'frank' => 'frank@dlink.cloud' }
  s.source          = { :http => "https://deeplink-dev-ios.s3.ap-southeast-1.amazonaws.com/ios-frameworks/AnalyticsKit/1.9.0/AnalyticsKit.xcframework.zip" }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  # open this on local debug
  #s.source_files = 'AnalyticsKit/**/*'
  # close this on local debug
  s.vendored_frameworks = "AnalyticsKit.xcframework"
  
  s.dependency 'ios-ntp'
  s.dependency 'FingerPrint'
  s.dependency 'WCDB.swift', '2.1.12'
  
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
end
