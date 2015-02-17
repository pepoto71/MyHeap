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
    @heap<<obj
    update
  end
  def delete(obj)
    if @heap.include?(obj)
      #TODO delete object from heap
      @heap.delete(obj) 
    end
  end
  def update    
    @heap.sort_by! { |obj| obj.price }    
  end
  def to_s
    result=    []
    @heap.each{|o| result<<[o.id,o.price]}
    result
  end
end
