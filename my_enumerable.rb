module MyEnumerable
  def any?
    each { |item| return true if yield(item) }
    false
  end

     def all?
     each {|item| return false unless yield(item)}
     true
     end

  def filter(&block)
    @list.select(&block)
  end
end
