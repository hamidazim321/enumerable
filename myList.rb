require_relative 'my_enumerable.rb'
class MyList
  include MyEnumarable
  attr_reader :list
  def initialize(*elements)
    @list = elements
  end
  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1,2,3,4,5)

puts list.any? {|item| item >= 5}