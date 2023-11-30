require_relative 'my_enumerable.rb'
class MyList
  include MyEnumarable
  attr_reader :list
  def initialize(list)
    @list = list
  end
end