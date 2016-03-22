class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    count = 0
    (1..@num).each { |num| count += num }
    count ** 2
  end

  def sum_of_squares
    count = 0
    (1..@num).each { |num| count += (num ** 2) }
    count
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end

  VERSION = 2
end
