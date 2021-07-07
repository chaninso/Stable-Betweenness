# Stable Betweenness

Compute the stable betweenness centrality for nodes.

## Usage
```
sbc(graph, undirected = TRUE)
```
### Arguments

graph: The graph to analyze.

undirected:  Logical, by defult it was set to undirected graph.

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

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
