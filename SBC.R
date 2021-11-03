#Script name: SBC
#Author: Gordon Aitken, Chanin Songchon
#Date Created: 28/06/2021
#Updated: 03/11/2021

# create sbc function
sbc <- function(graph, undirected = TRUE, normalize = FALSE){
  df <- as_adjacency_matrix(graph, type = c("both"),
                           attr = "weight", edges = FALSE, names = TRUE)
  df[is.na(df)] <- 0
  nodes = V(graph)$name
  outsbc <- data.frame(id = as.character(nodes),
                       SBC = NA, stringsAsFactors = FALSE)
  outsbc$id <- gsub(".", " ", outsbc$id, fixed = TRUE)
  rownames(outsbc) <- outsbc$id
  outsbc$id <- NULL
  
  #Shortest path length
  if(undirected){
    sp <- shortest.paths(graph, mode = "all")
  } else{
    sp <- shortest.paths(graph, mode = "out")
  }
  
  #delete 1 vertex, calculate path length
  for (i in 1:nrow(outsbc)){
    df2 <- df
    df2[i,] = df2[,i] = 0.0
    df2 <- data.matrix(df2, rownames.force = NA)

    if(undirected){
      g2 <- graph_from_adjacency_matrix(df2, mode = "undirected", weighted = TRUE)
      sp2 <- shortest.paths(g2, mode = "all")
    } else{
      g2 <- graph_from_adjacency_matrix(df2, mode = "directed", weighted = TRUE)
      sp2 <- shortest.paths(g2, mode = "out")
    }
    
    diff <- sp2-sp
    diff[is.infinite(diff)] <- NA
    sumval = sum(diff,na.rm=TRUE)
    outsbc$SBC[i] = sumval
  
  
    # Calculate Normalisation
    B <- outsbc$SBC    
    
    # 1) Min-Max = (SBC-Min)/(Max-Min)
    #outsbc$minmax = (B-min(B))/(max(B)-min(B))
    
    # 2) Bnorm = 2*SBC/(n*n-3*n+2)  as used in igraph #https://igraph.org/r/doc/betweenness.html
    n <- length(V(graph))
    Bnorm <- 2*B/(n*n-3*n+2)
    outsbc$normSBC <- Bnorm
    
    # 3) Scaled Bnorm between 0 and 1, to change the scaling change the constant.
    outsbc$normScaledSBC = 1*(Bnorm-min(Bnorm))/(max(Bnorm)-min(Bnorm))
    
    
  }
  if(normalize){
    #return(subset(outsbc, select=c("minmax")))
    return(outsbc)
  } else{
    return(subset(outsbc, select=c("SBC")))
 }
}

