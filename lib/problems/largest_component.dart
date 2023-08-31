import 'package:graph_problems_dart/utils/find_connected_nodes.dart';

/// Problem: Write a function, largestComponent, that takes in the adjacency list
///  of an undirected graph.
/// The function should return the size of the largest connected component in the graph.
///
/// Source: https://structy.net/problems/largest-component
///
/// Returns: null if the graph is empty, otherwise positive int starting from 1.
int? largestComponent<T>(Map<T, List<T>> graph) {
  if (graph.isEmpty) return null;
  //
  final nodes = <T>{...graph.keys};
  var largest = 0;
  do {
    final cur = nodes.first;
    final components =
        findConnectedNodes(graph, cur, acceptNeighbor: (e) => true);
    // print('components of "$cur": $components');
    nodes.removeAll(components);
    if (components.length > largest) {
      largest = components.length;
    }
  } while (nodes.isNotEmpty);
  return largest;
}
