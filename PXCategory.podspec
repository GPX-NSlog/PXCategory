
Pod::Spec.new do |s|


  s.name         = "PXCategory"
  s.version      = "1.0.0"
  s.summary      = "A useful categories for UIKit"
  s.homepage     = "https://github.com/GPX-NSlog/PXCategory"
  s.license      = "{ :type => 'MIT', :file => 'LICENSE' }"
  s.author             = { "Gpx" => "Gpxnslog@gamil.com" }
  s.platform     = :ios
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "https://github.com/GPX-NSlog/PXCategory.git", :tag => s.version.to_s }
  s.source_files  = "PXCategory/**/*.{h,m}"
  s.public_header_files = 'PXCategory/**/*.h'
  s.frameworks = ['Foundation', 'UIKit']

end
