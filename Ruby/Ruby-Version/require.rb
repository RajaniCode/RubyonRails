require './ruby_version'
puts RubyVersion.major
puts RubyVersion.minor
puts RubyVersion.teeny # puts RubyVersion.tiny
puts RubyVersion.patchlevel
puts RubyVersion.platform
puts RubyVersion.release_date
puts

require './os'
puts "Is Windows: #{OS::windows?}" 
puts "Is Mac: #{OS::mac?}" 
puts "Is Linux: #{OS::linux?}" 
puts

require './ruby_engine'
puts "RubyEngine.nil?"
puts RubyEngine.nil?
puts
puts "RubyEngine.methods(false)"
puts RubyEngine.methods(false)
puts
puts "RubyEngine.methods(true)"
puts RubyEngine.methods(true)