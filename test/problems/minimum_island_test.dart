import 'package:graph_problems_dart/problems/minimum_island.dart';
import 'package:graph_problems_dart/utils/map_grid_to_graph.dart';
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    final graph = mapGridToGraph(entry.grid);
    test('minimum island of "${entry.id}" is ${entry.minimumIsland}', () {
      expect(minimumIsland(graph), entry.minimumIsland);
    });
  }
}

const _data = <({String id, int? minimumIsland, List<List<String>> grid})>{
  (
    id: 'island-0',
    minimumIsland: null,
    grid: [
      ['W', 'W'],
      ['W', 'W'],
    ],
  ),
  (
    id: 'island-1',
    minimumIsland: 9,
    grid: [
      ['L', 'L', 'L'],
      ['L', 'L', 'L'],
      ['L', 'L', 'L'],
    ],
  ),
  (
    id: 'island-2',
    minimumIsland: 3,
    grid: [
      ['W', 'L', 'W', 'W', 'W'],
      ['W', 'L', 'L', 'W', 'W'],
      ['W', 'W', 'W', 'L', 'W'],
      ['W', 'W', 'L', 'L', 'W'],
      ['W', 'W', 'W', 'L', 'L'],
      ['W', 'W', 'W', 'W', 'W'],
    ]
  ),
  (
    id: 'island-3',
    minimumIsland: 2,
    grid: [
      ['W', 'L', 'W', 'W', 'W'],
      ['W', 'L', 'W', 'W', 'W'],
      ['W', 'W', 'W', 'L', 'W'],
      ['W', 'W', 'L', 'L', 'W'],
      ['L', 'W', 'W', 'L', 'L'],
      ['L', 'L', 'W', 'W', 'W'],
    ]
  ),
  (
    id: 'island-4',
    minimumIsland: 1,
    grid: [
      ['L', 'W', 'W', 'L', 'W'],
      ['L', 'W', 'W', 'L', 'L'],
      ['W', 'L', 'W', 'L', 'W'],
      ['W', 'W', 'W', 'W', 'W'],
      ['W', 'W', 'L', 'L', 'L'],
    ]
  ),
};
