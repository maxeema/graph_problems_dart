import 'package:graph_problems_dart/problems/island_count.dart';
import 'package:graph_problems_dart/utils/map_grid_to_graph.dart';
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    final graph = mapGridToGraph(entry.grid);
    test('island count of "${entry.id}" is ${entry.islandCount}', () {
      expect(islandCount(graph), entry.islandCount);
    });
  }
}

const _data = <({String id, int islandCount, List<List<String>> grid})>{
  (
    id: 'island-0',
    islandCount: 0,
    grid: [
      ['W', 'W'],
      ['W', 'W'],
    ],
  ),
  (
    id: 'island-1',
    islandCount: 1,
    grid: [
      ['L', 'L', 'L'],
      ['L', 'L', 'L'],
      ['L', 'L', 'L'],
    ],
  ),
  (
    id: 'island-2',
    islandCount: 2,
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
    islandCount: 3,
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
    islandCount: 4,
    grid: [
      ['L', 'W', 'W', 'L', 'W'],
      ['L', 'W', 'W', 'L', 'L'],
      ['W', 'L', 'W', 'L', 'W'],
      ['W', 'W', 'W', 'W', 'W'],
      ['W', 'W', 'L', 'L', 'L'],
    ]
  ),
};
