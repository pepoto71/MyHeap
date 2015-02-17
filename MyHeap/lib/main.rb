class MyHeap
  attr_reader :heap
  attr_accessor :size
  def initialize
    @heap=[]
    @size=0
  end
  def pop
    if @size>0
      @heap.pop
      #TODO after pop
    else
      nil
    end
  end
  def push(obj)
    #TODO push object into heap
  end
  def delete(obj)
    if @heap.include?(obj)
    #TODO delete object from heap
    end
  end
end
