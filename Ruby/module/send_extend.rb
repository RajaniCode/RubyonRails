module Modular
  def now
    puts Time.now
  end
end

class Extender; end

class Includer
  include Modular
end

# extend class level
Extender.send :extend, Modular
Extender.now

# include instance level
Includer.new.now
