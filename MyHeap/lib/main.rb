require './MyHeap'
require './Vertex'
require './UGraph'
require 'benchmark'

g=UGraph.new
g.load_from("dijkstraData.txt")

Benchmark.bmbm do |x|
  x.report("dijkstra") { g.dijkstra(1)}  
end

vs=[10,20,30,40,50,60,70,80,90,100]
result=[]
vs.each do |v|
  result<<g.verteces[v].price
end
print "verteces :"
p vs
print "distance :"
p result
