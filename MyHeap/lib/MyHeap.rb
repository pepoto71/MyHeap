class MyHeap
  attr_reader :heap
  attr_accessor :size
  def initialize
    @heap=[]
    @size=0
  end
  def pop
    if @size>0
      @size -=1
      @heap.shift
      #TODO after pop
    else
      nil
    end
  end
  def push(obj)
    #TODO push object into heap
    @heap<<obj
    @size +=1
    update
  end
  def delete(obj)
    if @heap.include?(obj)
      #TODO delete object from heap
      @heap.delete(obj)
      @size -=1
    end
  end
  def update    
    @heap.sort_by! { |obj| obj.price }    
  end
  def empty?
    @size<1
  end
  def include?(obj)
    @heap.include?(obj)
  end
  def to_s
    result=    []
    @heap.each{|o| result<<[o.id,o.price]}
    result
  end
end
