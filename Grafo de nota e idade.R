#Dados para o data frame:
notas <- c(8,7,7,7,7,8,5,2,4,4,10,10,10,10,4,6,7,7,7,8)
idades <- c(10,11,12,9,10,11,10,10,10,10,11,11,10,9,10,10,11,11,10,10)

#Numero de vértices:
n <- 10

#Criando o grafo de Erdos Renyi:
g.FR <- barabasi.game(10)

#Criação do data frame:
df <- data.frame(notas, idades)
df

#Separar o grafo em dois conjuntos de vértices:
V_idade <- 1:(n/2)
V_nota <- ((n/2) + 1):n


#Atribuir os dados do df ao vértice do grafo:
V(g.FR)$notas <- ifelse(V(g.FR) %in% V_idade, dados_alunos$idade, NA)
V(g.FR)$idades <- ifelse(V(g.FR) %in% V_nota, dados_alunos$nota, NA)

#Plotando o grafo:
plot(g.FR, vertex.label.cex = 0,5, vertex.label.color = "black", vertex.label.dist = 2, vertex.label.degree = 0, vertex.label.family = "sans", vertex.label.font = 1.5)


