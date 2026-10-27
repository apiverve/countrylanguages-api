Pod::Spec.new do |s|
  s.name             = 'APIVerveCountryLanguages'
  s.version          = '1.2.3'
  s.summary          = 'Country Languages lists official and commonly spoken languages for any country using its two-letter ISO code.'
  s.description      = <<-'DESC'
Country Languages lists official and commonly spoken languages for any country using its two-letter ISO code. It returns the common country name, formal official name, an array of recognized languages, and the total language count.

This iOS/macOS SDK provides a convenient way to access the Country Languages from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/countrylanguages?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/countrylanguages-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveCountryLanguages/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
