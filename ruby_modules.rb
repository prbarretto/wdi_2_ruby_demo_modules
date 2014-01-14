# Define a module
module MyModule
  def my_method
    "Hello World"
  end
end

# Define a class
class MyClass
  include MyModule
end

# Instantiate the class
my_class = MyClass.new

# Call the modules methods as a class instance method
my_class.my_method




# Enumerables
# After including the Enumerable module, define the each method
# This allows for other enumerables like map to work on this class

class MyClass

    include Enumerable

    attr_accessor :attribute_array

    def initialize(attribute_value)
        @attribute_array = attribute_value
    end

    def each(&block)
        @attribute_array.each do |member|
            block.call(member)
        end
    end

end

my_class = MyClass.new( [1, 2, 3, 4, 5] )
my_class.each { |value| p "*** #{value} ***"}
my_class.map { |value| p "*** #{value} ***"}


