#
#  Be sure to run `pod spec lint PinUnit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "PinUnit"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/chizhavko/PinUnit"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "chizhavko" => "chizh.inc@gmail.com" }

  spec.ios.deployment_target = "10.0"
  spec.swift_version = "5.2"

  spec.source        = { :git => "https://github.com/chizhavko/PinUnit.git", :branch => "main", :tag => "#{spec.version}" }
  spec.source_files  = "PinUnit/**/*.{h,m,swift}"

end
