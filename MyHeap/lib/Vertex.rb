class Vertex
  attr_reader :id
  attr_accessor :price, :visited
  def initialize(id)
    @id=id
    @price=Float::INFINITY
    @visited=false
  end
end
