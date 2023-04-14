module MyEnumerable
  def all?
    each { |item| return false unless yield item } if block_given?
    each { |item| return false unless item }
    true
  end
end
