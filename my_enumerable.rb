module MyEnumarable
  def any?
    each {|item| return true if yield(item)}
    false
  end
  def all?
  end
  def filter
  end
end