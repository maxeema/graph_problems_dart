import 'dart:collection';

/// Problem: Write a function, shortestPath, that takes in an array of edges for
///  an undirected graph and two nodes (nodeA, nodeB).
/// The function should return the length of the shortest path between A and B.
/// Consider the length as the number of edges in the path, not the number of nodes.
/// If there is no path between A and B, then return -1.
///
/// Source: https://structy.net/problems/shortest-path
///
/// Returns: null if there is no path, otherwise record with edges count and path.
///
/// Note 1: the implementation returns a Dart record instead of just int. Where
///  record contains information about edges count and full path of nodes if
///  there is a path between src and dst nodes.
///
/// Note 2: that there could be multiple shortest paths with the same amount of edges,
///  so we just return the first one using the Breadth First strategy.
({int edgesCount /* length */, List<T> path})? findShortestPath<T>(
    Map<T, List<T>> graph, T src, T dst) {
  final queue = DoubleLinkedQueue.of([
    (node: src, depth: 0, path: {src})
  ]);
  final visited = <T>{};
  do {
    var (node: cur, :depth, :path) = queue.removeFirst();
    // print('cur: $cur, depth: $depth, queue: $queue, visited: $visited');
    visited.add(cur);
    final neighbors = graph[cur]!;
    // print(' neighbors: $neighbors');
    for (var neighbor in neighbors) {
      if (neighbor == dst) {
        return (edgesCount: depth + 1, path: [...path, dst]);
      }
      if (!visited.contains(neighbor) &&
          !queue.any((e) => e.node == neighbor)) {
        queue
            .add((node: neighbor, depth: depth + 1, path: {...path, neighbor}));
      }
    }
  } while (queue.isNotEmpty);
  return null;
}
