require 'json'
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name             = "RNImageCropPicker"
  s.version          = package["version"]
  s.summary          = package["description"]
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.authors      = { "ivpusic" => "" }
  s.source       = { :git => "https://github.com/ivpusic/react-native-image-crop-picker", :tag => "v#{s.version}"}
  s.source_files = 'ios/*.{h,m}','ios/UIImage-Resize/*.{h,m}'
  s.platform     = :ios, "8.0"
  s.dependency 'React/Core'
  s.dependency 'RSKImageCropper'
  s.dependency 'QBImagePickerController'
end