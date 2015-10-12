#Object Oriented
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    array = [0, 1]
    array << (array[-1] + array[-2]) while (array[-1] + array[-2]) < @limit
    array.select(&:even?).reduce(:+)
  end
end
