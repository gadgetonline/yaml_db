# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaml_db/version'

Gem::Specification.new do |s|
  s.add_development_dependency 'bundler', '~> 1.14'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'sqlite3', '~> 1.3'

  s.add_runtime_dependency 'rails', '>= 3.0'
  s.add_runtime_dependency 'rake', '>= 0.8.7'

  s.authors = ['Adam Wiggins', 'Orion Henry']

  s.description = <<~YAMLDB
    YamlDb is a database-independent format for dumping and restoring data. It complements
    the database-independent schema format found in db/schema.rb. The data is saved into db/data.yml.

    This can be used as a replacement for mysqldump or pg_dump, but only for the databases typically
    used by Rails apps. Users, permissions, schemas, triggers, and other advanced
    database features are not supported - by design.

    Any database that has an ActiveRecord adapter should work.
  YAMLDB

  s.extra_rdoc_files = ['README.md']
  s.files            = Dir['README.md', 'lib/**/*']
  s.homepage         = 'https://github.com/yamldb/yaml_db'
  s.license          = 'MIT'
  s.name             = 'yaml_db'
  s.platform         = Gem::Platform::RUBY
  s.require_paths    = ['lib']
  s.required_ruby_version = '>= 2.5'
  s.summary          = 'yaml_db allows export/import of database into/from yaml files'
  s.version          = YamlDb::VERSION
end
