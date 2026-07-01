$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your wagon's version:
require 'hitobito_zss/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  # rubocop:disable SingleSpaceBeforeFirstArg
  s.name        = 'hitobito_zss'
  s.version     = HitobitoZss::VERSION
  s.authors     = ['Andreas Maierhofer']
  s.email       = ['maierhofer@puzzle.ch']
  s.homepage    = 'https://www.zss.ch'
  s.summary     = 'hitobito for Zss'
  s.description = 'hitobito for Zss'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile']
  # rubocop:enable SingleSpaceBeforeFirstArg
end
