import 'package:graph_problems_dart/utils/find_connected_nodes.dart';

/// Problem: Write a function, minimumIsland, that takes in a grid containing Ws and Ls.
/// W represents water and L represents land.
/// The function should return the size of the smallest island.
/// An island is a vertically or horizontally connected region of land.
///
/// Source: https://structy.net/problems/minimum-island
///
/// Returns: null if there is no island, otherwise positive int starting from 1.
int? minimumIsland(Map<String, List<String>> graph) {
  int? minSize;
  final nodes = [...graph.keys.where((e) => e[0] == 'L')];
  while (nodes.isNotEmpty) {
    final cur = nodes.removeAt(0);
    final connected =
        findConnectedNodes(graph, cur, acceptNeighbor: (e) => e[0] == 'L');
    if (minSize == null || connected.length < minSize) {
      minSize = connected.length;
    }
    nodes.removeWhere(connected.contains);
  }
  return minSize;
}
