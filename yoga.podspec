
Pod::Spec.new do |spec|
  spec.name = 'Hyoga'
  spec.version = '0.4.0'
  spec.license =  { :type => 'MIT' }
  spec.homepage = 'https://facebook.github.io/yoga/'
  spec.documentation_url = 'https://facebook.github.io/yoga/docs/api/c/'

  spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox.'
  spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

  spec.author           = { 'wowbby' => 'zhengzx@haierubic.com' }
  spec.source           = { :git => 'https://github.com/wowbby/yoya.git', :tag => spec.version.to_s }

  spec.module_name = 'yoga'
  spec.requires_arc = false
  spec.compiler_flags = [
      '-fno-omit-frame-pointer',
      '-fexceptions',
      '-Wall',
      '-Werror',
      '-std=c++1y',
      '-fPIC'
  ]

  # Pinning to the same version as React.podspec.
  spec.platforms = { :ios => "9.0", :tvos => "9.2" }

  # Set this environment variable when *not* using the `:path` option to install the pod.
  # E.g. when publishing this spec to a spec repo.
  spec.source_files = 'yoga/*'
  

  header_files = 'yoga/{Yoga,YGEnums,YGMacros}.h'

  spec.public_header_files = header_files
end
