module MyEnumerable
  def any?
    each {|item| return true if yield(item)}
    false
  end
  def all?
  end
  def filter(&block)
    @list.select(&block)
  end
end