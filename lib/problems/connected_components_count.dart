import 'package:graph_problems_dart/utils/find_connected_nodes.dart';

/// Problem: Write a function, connectedComponentsCount, that takes in the
///  adjacency list of an undirected graph.
///  The function should return the number of connected components within the graph.
///
/// Source: https://structy.net/problems/connected-components-count
///
/// Returns: null if the graph is empty, otherwise positive int starting from 1.
int? connectedComponentsCount<T>(Map<T, List<T>> graph) {
  if (graph.isEmpty) return null;
  //
  final nodes = {...graph.keys};
  var count = 0;
  do {
    final components =
        findConnectedNodes(graph, nodes.first, acceptNeighbor: (e) => true);
//     print('components of "${nodes.first}": $components');
    nodes.removeAll(components);
    count++;
  } while (nodes.isNotEmpty);
  return count;
}
