Pod::Spec.new do |s|
  s.name     = 'leveldb'
  s.version  = '1.15.0'
  s.license  = 'BSD'


  #s.source = 'LocalPods/cryptopp/5.6.2'
  s.source_files = '1.15.0/include/leveldb/*.h'
  s.preserve_paths = '1.15.0/lib/libleveldb.a'
  s.library = 'leveldb', 'c++'

  s.platform = :osx
  s.osx.deployment_target = '10.9'
  
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"LocalPods/leveldb/1.15.0/lib"'}


end
