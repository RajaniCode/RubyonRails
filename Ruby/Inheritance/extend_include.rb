# extend mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.
# include mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods)

module Modular
  def now
    puts Time.now
  end
end

class Extender
  extend Modular
end

class Includer
  include Modular
end

# extend class level
Extender.now

# include instance level
Includer.new.now

# Output System Date and Time viz.:
# 2016-07-29 19:16:41 +0530
# 2016-07-29 19:16:41 +0530