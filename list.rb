require_relative "my_enumerable"

class MyList
  include MyEnumerable

  attr_accessor :list

  def initialize(*args)
    @list = []
    args.each { |arg| @list << arg }
  end

  def each(&block)
    @list.each(&block)
  end
end
