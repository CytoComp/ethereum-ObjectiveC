Pod::Spec.new do |s|
  s.name     = 'secp256k1'
  s.version  = '0.471'
  s.license  = 'MIT'


  #s.source = 'LocalPods/cryptopp/5.6.2'
  s.source_files = '0.471/**/*.{h,m}'
  s.header_mappings_dir = '0.471'
  s.preserve_paths = '0.471/**/*.{h,m}'
  s.library = 'c++'

  s.platform = :osx
  s.osx.deployment_target = '10.9'
 
  s.dependency 'boost'
  #s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"LocalPods/cryptopp/5.6.2/lib"'}


end
