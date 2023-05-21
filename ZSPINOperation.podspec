Pod::Spec.new do |s|
  s.name          = 'ZSPINOperation'
  s.version       = '1.3.1'
  s.homepage      = 'https://github.com/Zandor300/ZSPINOperation'
  s.summary       = 'Fast, concurrency-limited task queue for iOS and OS X.'
  s.authors       = { 'Zandor Smith' => 'info@zsinfo.nl' }
  s.source        = { :git => 'https://github.com/Zandor300/ZSPINOperation.git', :tag => "#{s.version}" }
  s.license       = { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  s.requires_arc  = true
  s.frameworks    = 'Foundation'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  pch_PIN = <<-EOS
#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif
EOS
  s.prefix_header_contents = pch_PIN
  s.source_files = 'Source/**/*.{h,m,mm}'
end
