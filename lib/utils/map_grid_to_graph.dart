//

Map<String, List<String>> mapGridToGraph<T>(List<List<T>> grid) {
  final graph = <String, List<String>>{};
  String getNodeId(String node, int i, int j) => '$node-$i,$j';
  for (var i = 0; i < grid.length; i++) {
    final row = grid[i];
    for (var j = 0; j < row.length; j++) {
      final node = row[j]!;
      final nodeId = getNodeId('$node', i, j);
      final neighbors = graph.putIfAbsent(nodeId, () => []);
      if (i > 0) {
        // add top neighbor
        neighbors.add(getNodeId('${grid[i - 1][j]!}', i - 1, j));
      }
      if (i < grid.length - 1) {
        // add bottom neighbor
        neighbors.add(getNodeId('${grid[i + 1][j]!}', i + 1, j));
      }
      if (j > 0) {
        // add left neighbor
        neighbors.add(getNodeId('${grid[i][j - 1]!}', i, j - 1));
      }
      if (j < row.length - 1) {
        // add right neighbor
        neighbors.add(getNodeId('${grid[i][j + 1]!}', i, j + 1));
      }
    }
  }
  return graph;
}
