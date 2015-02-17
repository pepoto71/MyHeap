class Vertex
  attr_reader :id
  attr_accessor :price, :visited, :parrent
  def initialize(id)
    @id=id
    @price=Float::INFINITY
    @visited=false
    @parrent=nil
  end
  def to_s
    info=""
    info +=self.id.to_s+":"+self.price.to_s
  end
end
