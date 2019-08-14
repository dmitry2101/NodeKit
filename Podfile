# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'CoreNetKit' do

    use_frameworks!

    pod 'Alamofire', '~> 4.7.2'
    pod 'CoreEvents', :git => 'https://github.com/surfstudio/CoreEvents', :commit=> '97a41bf'

    target 'CoreNetKitTests' do

    pod 'CoreEvents', :git => 'https://github.com/surfstudio/CoreEvents', :commit=> '97a41bf'

    end
end
post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings['SWIFT_VERSION'] = '5.0'
  end
end

