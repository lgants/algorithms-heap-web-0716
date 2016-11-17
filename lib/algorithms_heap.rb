# code your solution here
class MinHeap
  attr_accessor :data, :root

  def initialize
    @data = []
    @root = nil
  end

  def push(n)
    if @root == nil
      @root = n
    elsif n < @root
      @root = n
    end
    @data.push(n)
  end

  def pop
    if @data.last == @root
      x = @data.pop
      @root = @data.min
    end
    x ||= @data.pop
  end

end
