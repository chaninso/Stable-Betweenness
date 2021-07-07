# Stable Betweenness

Compute the stable betweenness centrality for nodes.

## Usage
```
sbc(graph, undirected = TRUE)
```
### Arguments

**graph**:- The graph to analyze.

**undirected**:-  Logical, by defult it was set to undirected graph.

For directed graph, an argument "undirected = FALSE" must be specified.
```
sbc(graph, undirected = FALSE)
```

### Return value

The "sbc" function return a named list of the stable betweenness score for each node.

```
Give the example
```

## Required package

* [igraph](https://igraph.org/r/) - Used to generate short path lengths

## Authors

* [**Chanin Songchon**](https://github.com/chaninso)
* [**Gordon Aitken**](https://github.com/ga41)

## References

* S. Segarra and A. Ribeiro, "A stable betweenness centrality measure in networks," 2014 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), 2014, pp. 3859-3863, doi: 10.1109/ICASSP.2014.6854324.

## Acknowledgments

* This work is a part of project xxxx funded by xxxx.