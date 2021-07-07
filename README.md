# Stable Betweenness

A script in R to compute the stable betweenness centrality for nodes.

## Usage
```
sbc(graph, undirected = TRUE)
```
### Arguments

**graph**: The graph to analyze.

**undirected**:  Logical, by defult it was set to undirected graph.

**For directed graph:** an argument **"undirected = FALSE"** must be specified.
```
sbc(graph, undirected = FALSE)
```

### Return value

The "sbc" function return a data frame of the stable betweenness score for each node.

| node name | value |
| --- | --- |
| node 1 | sbc value 1 |
| node 2 | sbc value 2 |
| node 3 | sbc value 3 |
| ... | ... |
| node x | sbc value x |

## Required package

* [igraph](https://igraph.org/r/) - Used to generate shortest path lengths

## Authors

* [**Chanin Songchon**](https://github.com/chaninso)
* [**Gordon Aitken**](https://github.com/ga41)

## References

* [S. Segarra and A. Ribeiro, "A stable betweenness centrality measure in networks," 2014 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), 2014, pp. 3859-3863, doi: 10.1109/ICASSP.2014.6854324.](https://ieeexplore.ieee.org/document/6854324)

## Acknowledgments

* This work is a part of project xxxx funded by xxxx.