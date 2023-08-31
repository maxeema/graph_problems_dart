import 'dart:collection';

Set<T> findConnectedNodes<T>(Map<T, List<T>> graph, T src,
    {required bool Function(T node) acceptNeighbor}) {
  final queue = DoubleLinkedQueue.of([src]);
  final connected = <T>{};
  do {
    final cur = queue.removeFirst();
    connected.add(cur);
    for (var neighbor in graph[cur]!.where(acceptNeighbor)) {
      if (!connected.contains(neighbor)) {
        queue.add(neighbor);
      }
    }
//     print(' queue of "$cur": $queue');
  } while (queue.isNotEmpty);
  return connected;
}
