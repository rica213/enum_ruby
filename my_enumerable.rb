module MyEnumerable
  def all?
    each { |item| return false unless yield item } if block_given?
    each { |item| return false unless item }
    true
  end

  def any?
    each { |item| return true if yield item } if block_given?
    each { |item| return true if item } unless block_given?
    false
  end

  def filter
    result = []
    each { |item| result << item if yield item }
    result
  end
end
