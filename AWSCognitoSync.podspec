Pod::Spec.new do |s|

  s.name         = 'AWSCognitoSync'
  s.version      = '1.0.6'
  s.summary      = 'Amazon Cognito SDK for iOS'

  s.description  = 'Amazon Cognito offers multi device data synchronization with offline access'

  s.homepage     = 'http://aws.amazon.com/cognito'
  s.license      = 'Amazon Software License'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.ios.platform = :ios, '8.0'
  s.osx.platform = :osx, '10.7'
  s.source       = { :git => 'https://github.com/Graceful/amazon-cognito-ios.git',
                     :tag => s.version}
  s.requires_arc = true

  s.subspec 'Cognito' do |cognito|
    cognito.source_files = 'CognitoSync/*.{h,m}', 'Cognito/*.{h,m}', 'Cognito/**/*.{h,m}'
    cognito.public_header_files = "Cognito/*.h",'CognitoSync/*.{h,m}'
    cognito.resources = ['CognitoSync/Resources/*.json']
  end
end
