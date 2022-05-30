module CustomAttributeReader
 def custom_attr_reader(sym)
  class_eval <<-READER, __FILE__ , __LINE__ + 1 
   def #{sym}
    # undefined_method # Note: + 1
    @#{sym}
   end
   # Note: No space after READER
  READER
 end
end

class Example
  extend CustomAttributeReader

  def initialize(name)
    @name = name 
  end 

  custom_attr_reader :name
end

eg = Example.new("ReadOnly")
p eg.name

module ErrorCustomAttributeReader
 def custom_attr_reader(sym)  
  # Specifying error file and line 
  class_eval("def #{sym}; undefined_method; @#{sym}; end;", __FILE__ , __LINE__ )
  # Without specifying error file and line 
  # class_eval("def #{sym}; undefined_method; @#{sym}; end;")
 end
end

class ErrorExample
  extend ErrorCustomAttributeReader

  def initialize(name)
    @name = name
  end 

  custom_attr_reader :name
end

erg = ErrorExample.new("ReadOnly")
p erg.name
