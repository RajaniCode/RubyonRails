module Modular
  def now
    puts Time.now
  end
end

class Extender
 extend Modular
end

class Includer; end

# extend class level
Extender.now

# include instance level
Includer.send :include, Modular
Includer.new.now

