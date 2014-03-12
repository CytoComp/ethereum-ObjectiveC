Pod::Spec.new do |s|
  s.name     = 'miniupnpc'
  s.version  = '1.8.20131007'
  s.license  = 'MIT'


  ####s.source = 'LocalPods/cryptopp/5.6.2'
  s.source_files = '1.8.20131007/include/miniupnpc/*.h'
  s.preserve_paths = '1.8.20131007/lib/miniupnpc.a'
  s.library = 'miniupnpc', 'c++'

  s.platform = :osx
  s.osx.deployment_target = '10.9'
  
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"LocalPods/miniupnpc/1.8.20131007/lib"'}


end
