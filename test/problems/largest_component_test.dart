import 'package:graph_problems_dart/problems/largest_component.dart';
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    test('largest component of "${entry.id}" is ${entry.largestComponent}', () {
      expect(largestComponent(entry.graph), entry.largestComponent);
    });
  }
}

const _data = <({String id, int? largestComponent, Map<int, List<int>> graph})>{
  (
    id: 'graph-1',
    largestComponent: 4,
    graph: {
      0: [8, 1, 5],
      1: [0],
      5: [0, 8],
      8: [0, 5],
      2: [3, 4],
      3: [2, 4],
      4: [3, 2]
    }
  ),
  (
    id: 'graph-2',
    largestComponent: 6,
    graph: {
      1: [2],
      2: [1, 8],
      6: [7],
      9: [8],
      7: [6, 8],
      8: [9, 7, 2]
    }
  ),
  (
    id: 'graph-3',
    largestComponent: 5,
    graph: {
      3: [],
      4: [6],
      6: [4, 5, 7, 8],
      8: [6],
      7: [6],
      5: [6],
      1: [2],
      2: [1]
    },
  ),
  (
    id: 'graph-4',
    largestComponent: null,
    graph: <int, List<int>>{
      // empty
    }
  ),
  (
    id: 'graph-5',
    largestComponent: 3,
    graph: {
      0: [4, 7],
      1: [],
      2: [],
      3: [6],
      4: [0],
      6: [3],
      7: [0],
      8: []
    }
  ),
  (
    id: 'graph-6',
    largestComponent: 1,
    graph: {
      0: [],
      1: [],
    }
  ),
  (
    id: 'graph-7',
    largestComponent: 2,
    graph: {
      0: [1],
      1: [0],
    }
  ),
};
