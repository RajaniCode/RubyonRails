class Person
  def self.get_name
    persons_name
  end
  class << self
    private
      def persons_name
        "Ruby"
      end
  end
end

puts "Hi, " + Person.get_name


class Personal
  def self.get_name
    persons_name
  end

  private
    def self.persons_name
      "Rails"
    end
end

puts "Hi, " + Personal.get_name
puts "Hi, " + Personal.persons_name

class Personnel
  def self.get_name
    persons_name
  end

  # Ruby 2.1+
  private_class_method 
  def self.persons_name
    "RubyOnRails"
  end
end

puts "Hi, " + Personnel.get_name
puts "Hi, " + Personnel.persons_name