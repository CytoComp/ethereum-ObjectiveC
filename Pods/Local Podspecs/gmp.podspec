Pod::Spec.new do |s|
  s.name     = 'gmp'
  s.version  = '5.1.3'
  s.license  = 'MIT'


  #s.source = 'LocalPods/cryptopp/5.6.2'
  s.source_files = '5.1.3/include/*.h'
  s.preserve_paths = '5.1.3/lib/libgmp.a'
  s.library = 'gmp', 'c++'

  s.platform = :osx
  s.osx.deployment_target = '10.9'
  
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"LocalPods/gmp/5.1.3/lib"'}


end
