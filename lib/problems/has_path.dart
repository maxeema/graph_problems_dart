import 'dart:collection';

/// Problem: Write a function, hasPath, that takes in an object representing
///  the adjacency list of a directed acyclic graph and two nodes (src, dst).
/// The function should return a boolean indicating whether or not there
///  exists a directed path between the source and destination nodes.
///
/// Source: https://structy.net/problems/has-path
///
/// Returns: true if there is a paht between src and dst nodes.
///
/// Note: the method assumes that graph is directed (acyclic)
bool hasPath<T>(Map<T, List<T>> graph, T src, T dst) {
  // Depth First implementation using Stack (LIFO)
  final stack = DoubleLinkedQueue.of([src]);
  do {
    final cur = stack.removeLast();
    if (cur == dst) return true;
    for (final neighbor in graph[cur]!) {
      stack.add(neighbor);
    }
  } while (stack.isNotEmpty);
  return false;
}

/// Note: the method assumes that graph is directed (acyclic).
bool hasPathRecursive<T>(Map<T, List<T>> graph, T src, T dst) {
  if (src == dst) return true;
  for (final neighbor in graph[src]!) {
    if (hasPathRecursive(graph, neighbor, dst)) {
      return true;
    }
  }
  return false;
}
