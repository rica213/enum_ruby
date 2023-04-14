require_relative "my_enumerable"

class MyList
  include MyEnumerable

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def each
    @list.each do |item|
      yield item
    end
  end
end

list = MyList.new([1, 2, 3, 0])
p list.all? { |item| item.is_a? Fixnum }
