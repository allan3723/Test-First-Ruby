class Array
  attr_accessor :sum
  def initialize
    sum = 0
  end

  def sum
    total = 0
    self.each {|num| total += num}
    sum = total
  end

  def square
    self.map {|num| num ** 2}
  end

  def square!
    self.map! {|num| num ** 2}
  end
end
