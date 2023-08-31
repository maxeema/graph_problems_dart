import 'package:graph_problems_dart/utils/find_connected_nodes.dart';

/// Problem: Write a function, islandCount, that takes in a grid containing Ws and Ls.
/// W represents water and L represents land.
/// The function should return the number of islands on the grid.
/// An island is a vertically or horizontally connected region of land.
///
/// Source: https://structy.net/problems/island-count
///
/// Returns: 0 if there is no island, otherwise positive int starting from 1.
int islandCount(Map<String, List<String>> graph) {
  var count = 0;
  final nodes = [...graph.keys.where((e) => e[0] == 'L')];
  while (nodes.isNotEmpty) {
    final node = nodes.removeAt(0);
    final connected =
        findConnectedNodes(graph, node, acceptNeighbor: (e) => e[0] == 'L');
    // print(' connected Ls of "$node": $connected');
    nodes.removeWhere(connected.contains);
    count++;
  }
  return count;
}
