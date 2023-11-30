require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    index = 0
    while index < @list.length
      yield(@list[index])
      index += 1
    end
  end
end
