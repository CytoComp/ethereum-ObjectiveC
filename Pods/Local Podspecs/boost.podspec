Pod::Spec.new do |s|
  s.name     = 'boost'
  s.version  = '1.55.0'
  s.license  = 'MIT'


  #s.source = 'LocalPods/cryptopp/5.6.2'
  # s.source_files = '1.55.0/boost/*.{h,hpp}'
  # s.library = 'c++', 'boost_atomic', 'boost_chrono', 'boost_coroutine',
  #               'boost_date_time', 'boost_exception'
  #
  # s.platform = :osx
  # s.osx.deployment_target = '10.9'
  #
  # s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"LocalPods/boost/1.55.0/stage/lib"'}
  #
  # s.subspec 'multiprecision' do |multiprecision|
  #   multiprecision.header_dir = 'multiprecision'
  #   multiprecision.source_files = '1.55.0/boost/multiprecision/*.{h,hpp,ipp}'
  # end

  s.source_files = '1.55.0/boost/**/*.{h,hpp,ipp}'
  s.header_mappings_dir = '1.55.0/boost'
  s.preserve_paths = '1.55.0/boost/**/*.{h,hpp,ipp}'

  s.library = 'c++',
                'boost_atomic',
                'boost_chrono',
                'boost_coroutine',
                'boost_date_time',
                'boost_exception',
                'boost_filesystem',
                'boost_graph',
                'boost_iostreams',
                'boost_locale',
                'boost_log',
                'boost_log_setup',
                'boost_math_c99',
                'boost_math_c99f',
                'boost_math_c99l',
                'boost_math_tr1',
                'boost_math_tr1f',
                'boost_math_tr1l',
                'boost_prg_exec_monitor',
                'boost_program_options',
                'boost_python',
                'boost_random',
                'boost_regex',
                'boost_serialization',
                'boost_signals',
                'boost_system',
                'boost_test_exec_monitor',
                'boost_thread',
                'boost_timer',
                'boost_unit_test_framework',
                'boost_wave',
                'boost_wserialization'
                
  s.platform = :osx
  s.osx.deployment_target = '10.9'

  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => 'LocalPods/boost/1.55.0/stage/lib/', 'OTHER_CFLAGS' => '-D__ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES=0'}

end
