module MyEnumerable
end



class MyList
  include MyEnumerable
  
  attr_accessor :list

  def initialize(list)
    @list = list
  end


end

