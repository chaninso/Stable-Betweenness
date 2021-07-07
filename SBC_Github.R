#Script name: SBC
#Author: Gordon Aitken, Chanin Songchon
#Date Created: 28/06/21

# create sbc function
sbc <- function(graph, undirected = TRUE){
  df <- as_adjacency_matrix(graph, type = c("both"),
                           attr = "weight", edges = FALSE, names = TRUE)
  df[is.na(df)] <- 0
  nodes = V(graph)$name
  outsbc <- data.frame(id = as.character(nodes),
                       value = NA, stringsAsFactors = FALSE)
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
    outsbc$value[i] = sumval
  }
  return(outsbc)
}

