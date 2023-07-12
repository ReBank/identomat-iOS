#
#  Be sure to run `pod spec lint identomat.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = 'identomat'
  spec.version      = '1.1.54'
  spec.summary      = "AI-Powered KYC & Identity Verification"
  spec.description  = "AI-Powered KYC & Identity Verification library for IOS Covering full identity proofing and KYC compliance pipeline"
  spec.homepage     = "https://gitlab.com/identomat-public/identomat-example-app-ios"
  spec.license      = "Copyright (c) Identomat Inc."
  spec.author             =  "Identomat Inc."
  spec.swift_versions = '5'
  spec.ios.deployment_target = '12.0'
  spec.source       = { :git => "https://gitlab.com/identomat-public/identomat-ios-framework-public.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = 'identomat.xcframework'
  spec.source_files = 'identomat.xcframework/**/*.h'
  spec.dependency 'WebRTC-lib'
  # spec.pod_target_xcconfig = {
  #   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  # }
  # spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  
  #spec.exclude_files = "Classes/Exclude"
  #spec.source_files = 'identomat.xcframework/**/*.h'
  #spec.exclude_files = 'identomat.xcframework/*.plist'

end
