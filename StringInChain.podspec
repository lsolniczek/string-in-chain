#
# Be sure to run `pod lib lint StringInChain.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "StringInChain"
  s.version          = "0.1.0"
  s.summary          = "StringInChain give you a far more clean way to create attributed string."
  s.description      = <<-DESC
                       StringInChain give you a far more clean way to create attributed string.
                       DESC
  s.homepage         = "https://github.com/lsolniczek/StringInChain"
  s.license          = 'MIT'
  s.author           = { "Lukasz Solniczek" => "l.solniczek@gmail.com" }
  s.source           = { :git => "https://github.com/lsolniczek/StringInChain.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'StringInChain' => ['Pod/Assets/*.png']
  }

end
