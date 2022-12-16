# frozen_string_literal: true

# enumerable
module MyEnumerable
  def all?
    new_arr = []
    @list.each { |item| new_arr.push(item) if yield item }
    puts new_arr.length == @list.length
  end

  def any?
    @list.each { |item| return true if yield item }
  end

  def filter
    arr = []
    @list.each { |item| arr.push(item) if yield item }
    print arr
  end
end
