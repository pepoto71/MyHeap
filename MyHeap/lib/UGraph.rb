require './MyHeap'
require './Vertex'

class UGraph
  attr_reader :graph, :verteces
  def initialize
    @graph=Hash.new
    @verteces=Hash.new
  end
  def load_from(file)
    File.open(file, "r") do |infile|
      while (line = infile.gets)
        info=line.split
        v=info[0].to_i
        info[1..-1].each do |item|
          tuple=item.split(",")
          u=tuple[0].to_i
          price=tuple[1].to_i
          if @verteces[v].nil?
            @verteces[v]=Vertex.new(v)
            @graph[v]=[]
          end
          if @verteces[u].nil?
            @verteces[u]=Vertex.new(u)
            @graph[u]=[]
          end
          @graph[v]<<[u,price]
          @graph[u]<<[v,price]
        end
      end
    end    
  end
  def dijkstra(source)
    heap=MyHeap.new    
    @verteces[source].price=0
    heap.push(@verteces[source])
    while !heap.empty?
      vertex=heap.pop
      parrent =vertex.id
      @graph[parrent].each do |id,price|
        if !@verteces[id].visited
          if heap.include?(@verteces[id])
            heap.delete(@verteces[id])
          end
          if @verteces[id].price>@verteces[parrent].price+price
            @verteces[id].price=@verteces[parrent].price+price
            @verteces[id].parrent=parrent
          end
          heap.push(@verteces[id])
        end
      end
      vertex.visited=true
    end
  end
end
