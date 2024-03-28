#Manual para construção de Redes

#Exemplo de rede não-direcionado usando modelo c(n.p) de Erdos-Renyi (ER)

g.ER <- erdos.renyi.game(n=20, p=1/10)
plot(g.ER, layout=layout_with_fr, vertex.size=5, 
     vertex.label.dist=0,5, vertex.color="red",edge.arrow.size=0.5)

#Exemplo de rede direcionada usando o modelo Barabasi-Albert(BA)

g.BA <- barabasi.game(20)
plot(g.BA, layout=layout_with_fr, vertex.size=5,
     vertex.label.dist = 0.5, vertex.color = "green", edge.arrow.size = 0.5)

#Exemplo de construção manual da rede

#Criar uma rede não-direcionada e não-valorada

arestas <- matrix(c(1,2,2,3,3,1), ncol = 2, byrow = TRUE)
g1 <-graph(edges = arestas, n=3, directed=FALSE)
g1
plot(g1)

#Criar uma rede direcionada e não-valorada
arestas <- matrix(c(1,2,2,3,3,1), ncol = 2, byrow = TRUE)
g2 <- graph(edges = arestas, n=10, directed = TRUE)
g2
plot(g2)

arestas <- matrix(c('Euler','Fabio',
                    'Fabio','Ana',
                    'Fabio','Carlos',
                    'Euler','Euler'), ncol = 2, byrow = TRUE)
isolados <- c('Gabriel','Bia','Dara')

g3 <- graph(edges = arestas,isolates = isolados, directed = TRUE)
g3
plot(g3, edge.arrow.size = 0.5, vertex.color = 'gold', vertex.size = 15,
     vertex.frame.color = 'gray', vertex.label.color = 'black',
     vertex.label.cex = 0.8, vertex.label.dist = 2, edge.curved = 0.2)


#Deletar vertices sem arestas
g4 <- delete.vertices(g3, which(degree(g3)==0))
plot(g4, edge.arrow.size = 0.5, vertex.color = 'gold', vertex.size = 15,
     vertex.frame.color = 'gray', vertex.label.color = 'black',
     vertex.label.cex = 0.8, vertex.label.dist = 2, edge.curved = 0.2)

