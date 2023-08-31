import 'package:graph_problems_dart/utils/has_path.dart';
import 'package:graph_problems_dart/utils/map_edges_to_graph.dart';

/// Problem: Write a function, undirectedPath, that takes in an array of edges
///  for an undirected graph and two nodes (nodeA, nodeB).
/// The function should return a boolean indicating whether or not there exists
///  a path between nodeA and nodeB.
///
/// Source: https://structy.net/problems/undirected-path
///
/// Returns: true if there is a paht between src and dst nodes.
bool undirectedPath<T>(List<List<T>> edges, T src, T dst) {
  final graph = mapEdgesToGraph(edges);
  return hasPath(graph, src, dst);
}

bool undirectedPathRecursive<T>(List<List<T>> edges, T src, T dst) {
  final graph = mapEdgesToGraph(edges);
  return hasPathRecursive(graph, src, dst);
}
