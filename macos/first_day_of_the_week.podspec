#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
#
Pod::Spec.new do |s|
  s.name             = 'first_day_of_the_week'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin to get system first day of the week on macOS.'
  s.description      = <<-DESC
A Flutter plugin to get system first day of the week on macOS.
                       DESC
  s.homepage         = 'https://github.com/Nizlan/first_day_of_the_week'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.14'
  s.swift_version = '5.0'
end
