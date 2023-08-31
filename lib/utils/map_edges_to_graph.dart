//

Map<T, List<T>> mapEdgesToGraph<T>(List<List<T>> edges) {
  final graph =
      Map<T, List<T>>.fromEntries(edges.map((e) => MapEntry(e.first, <T>[])));
  for (final edge in edges) {
    graph[edge.first]!.add(edge.last);
    graph.putIfAbsent(edge.last, () => <T>[]).add(edge.first);
  }
  return graph;
}
