Pod::Spec.new do |s|
  s.name     = 'cryptopp'
  s.version  = '5.6.2'
  s.license  = 'MIT'


  #s.source = 'LocalPods/cryptopp/5.6.2'
  s.source_files = '5.6.2/include/cryptopp/*.h'
  s.preserve_paths = '5.6.2/lib/libcryptopp.a'
  s.library = 'cryptopp', 'c++'

  s.platform = :osx
  s.osx.deployment_target = '10.9'
  
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"LocalPods/cryptopp/5.6.2/lib"'}


end
