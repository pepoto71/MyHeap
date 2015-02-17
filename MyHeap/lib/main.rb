require './MyHeap'
require './Vertex'

h=MyHeap.new

verteces=[]

10.times do |i|
  verteces<<Vertex.new(i+1)
  verteces[i].price=rand(1000)+1 #not zero values
  h.push(verteces[i])
end

p h
p h.to_s
