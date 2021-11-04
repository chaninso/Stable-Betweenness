# Stable Betweenness

A script in R to compute the stable betweenness centrality for nodes.

## Usage
```
sbc(graph, undirected = TRUE, normalize = FALSE)
```
### Arguments

**graph**: The graph to analyze.

**undirected**:  Logical, by defult it was set to undirected graph.

**For directed graph:** an argument **"undirected = FALSE"** must be specified.

```
e.g. sbc(graph, undirected = FALSE)
```

**normalize**:  Logical, to activate the normalize option, **"normalize = TRUE"** must be specified.
```
e.g. sbc(graph, undirected = FALSE, normalize = TRUE)
```
### Return value (For option: normalize = FALSE)

The "sbc" function return a data frame of the stable betweenness score for each node.

| node name | SBC value |
| --- | --- |
| node 1 | sbc value 1 |
| node 2 | sbc value 2 |
| node 3 | sbc value 3 |
| ... | ... |
| node x | sbc value x |

### Return value (For option: normalize = TRUE)

The "sbc" function return a data frame of 
1) column SBC: the stable betweenness score for each node.
2) column normSBC: the normalized value of the SBC value [Bnorm = 2*SBC/(n*n-3*n+2)]  as used in igraph #https://igraph.org/r/doc/betweenness.html
3) column normScaledSBC: Scaled Bnorm to range between 0 and 1

| node name | SBC | normSBC | normScaledSBC |
| --- | --- | --- | --- |
| node 1 | sbc node 1 | normSBC node 1 | normScaledSBC node 1 |
| node 2 | sbc node 2 | normSBC node 2 | normScaledSBC node 2 |
| node 3 | sbc node 3 | normSBC node 3 | normScaledSBC node 3 |
| ... | ... | ... | ... |
| node x | sbc node x | normSBC node x | normScaledSBC node x |

## Required package

* [igraph](https://igraph.org/r/) - Used to generate shortest path lengths

## Authors

* [**Chanin Songchon**](https://github.com/chaninso)
* [**Gordon Aitken**](https://github.com/ga41)

## References

* [S. Segarra and A. Ribeiro, "A stable betweenness centrality measure in networks," 2014 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), 2014, pp. 3859-3863, doi: 10.1109/ICASSP.2014.6854324.](https://ieeexplore.ieee.org/document/6854324)

## Acknowledgments

* This work is funded by UKRI EPSRC as a part of Urban Systems Abstraction Hierarchy (USAH) project in Water Resilient Cities group, grant number EP/N030419/1