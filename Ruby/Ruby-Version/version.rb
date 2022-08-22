puts "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"

puts "RUBY_VERSION"
puts RUBY_VERSION
puts

puts "RUBY_RELEASE_DATE"
puts RUBY_RELEASE_DATE
puts

puts "RUBY_PLATFORM"
puts RUBY_PLATFORM
puts

puts "RUBY_PATCHLEVEL"
puts RUBY_PATCHLEVEL
puts

puts "RUBY_REVISION"
puts RUBY_REVISION
puts

puts "RUBY_DESCRIPTION"
puts RUBY_DESCRIPTION
puts

puts "RUBY_COPYRIGHT"
puts RUBY_COPYRIGHT
puts

puts "RUBY_ENGINE"
puts RUBY_ENGINE
puts

puts "Major"
puts RUBY_VERSION.to_i
puts

puts "Minor"
puts RUBY_VERSION.split('.')[1].to_i
puts

puts "Teeny or Tiny"
puts RUBY_VERSION.split('.')[2].to_i
puts

puts "RUBY_ENGINE"
puts RUBY_ENGINE
puts

# puts "Object.constants"
# puts Object.constants
# puts

puts "require 'rbconfig'"
require 'rbconfig'
puts "RbConfig::CONFIG['host_os']"
puts RbConfig::CONFIG['host_os']
puts

puts "Is Windows"
puts !!(RbConfig::CONFIG['host_os'] =~ /mswin|win|mingw/)
puts

puts "Is Mac"
puts !!(RbConfig::CONFIG['host_os'] =~ /mac|darwin/)
puts

puts "Is Linux"
puts !!(RbConfig::CONFIG['host_os'] =~ /linux|cygwin/)