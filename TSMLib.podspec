Pod::Spec.new do |s|
 
  # 1
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "TSMLib"
  s.summary = "TSMLib is a library."
  s.requires_arc = true
 
  # 2
  s.version = "0.0.5"
 
  # 3
  s.license = { :type => "MIT", :file => "LICENSE" }
 
  # 4 - Replace with your name and e-mail address
  s.author = { "Tismart Peru" => "franco.castellano@tismartperu.com" }
 
  # For example,
  # s.author = { "Joshua Greene" => "jrg.developer@gmail.com" }
 
 
  # 5 - Replace this URL with your own Github page's URL (from the address bar)
  s.homepage = "https://github.com/tismart/TSMLib"
 
  # For example,
  # s.homepage = "https://github.com/JRG-Developer/RWPickFlavor"
 
 
  # 6 - Replace this URL with your own Git URL from "Quick Setup"
  s.source = { :git => "https://github.com/tismart/TSMLib.git", :tag => "#{s.version}"}
 
  # For example,
  # s.source = { :git => "https://github.com/JRG-Developer/RWPickFlavor.git", :tag => "#{s.version}"}
 
 
  # 7
  s.framework = "UIKit"
  s.dependency 'Alamofire'
  s.dependency 'MagicalRecord'
  s.dependency 'GoogleMaps'
 
  # 8
  s.source_files = "TSMLib/**/*.{swift}"
 
  # 9
  # s.resources = "TSMLib/**/*.{png,jpeg,jpg,storyboard,xib}"
end