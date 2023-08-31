import 'dart:collection';

/// Note: the method assumes that graph could be undirected (cyclic).
bool hasPath<T>(Map<T, List<T>> graph, T src, T dst) {
  final queue = DoubleLinkedQueue.of([src]);
  final visited = <T>{};
  do {
    // print('queue: $queue, visited: $visited');
    final cur = queue.removeFirst();
    if (cur == dst) return true;
    if (visited.contains(cur)) continue;
    visited.add(cur);
    final neighbors = graph[cur]!;
    queue.addAll(neighbors.where((e) => !visited.contains(e)));
  } while (queue.isNotEmpty);
  return false;
}

/// Note: the method assumes that graph could be undirected (cyclic).
bool hasPathRecursive<T>(Map<T, List<T>> graph, T src, T dst,
    [Set<T>? visited]) {
  if (src == dst) return true;
  final neighbors = graph[src]!;
  visited ??= <T>{};
  for (final neighbor in neighbors.where((e) => !visited!.contains(e))) {
    visited.add(neighbor);
    if (hasPathRecursive(graph, neighbor, dst, visited)) {
      return true;
    }
  }
  return false;
}
