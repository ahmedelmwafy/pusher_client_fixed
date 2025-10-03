#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint pusher_client.podspec' to validate before publishing.
#
require 'yaml'
pubspec = YAML.load_file(File.join('..', 'pubspec.yaml'))
libraryVersion = pubspec['version'].gsub('+', '-')

Pod::Spec.new do |s|
  s.name             = 'PusherSwiftWithEncryption'
  s.version          = '10.1.5'
  s.summary          = 'Pusher client library for iOS with end-to-end encryption support.'
  s.description      = <<-DESC
Pusher client library for iOS (Swift), including support for private and presence channels,
plus end-to-end encrypted channels using TweetNacl.
  DESC
  s.homepage         = 'https://github.com/ahmedelmwafy/PusherSwiftWithEncryption'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pusher' => 'support@pusher.com' }
  s.source           = { :git => 'https://github.com/ahmedelmwafy/PusherSwiftWithEncryption.git', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.exclude_files = 'Sources/Exclude'

  s.dependency 'Starscream', '~> 4.0.4'
  s.dependency 'ReachabilitySwift', '~> 5.0.0'
  
  # ✅ بدلنا الـ CTweetNacl عشان ييجي من فوركك
  s.dependency 'CTweetNacl', :git => 'https://github.com/ahmedelmwafy/CTweetNacl.git'
end
