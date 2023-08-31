import 'package:graph_problems_dart/problems/shortest_path.dart';
import 'package:graph_problems_dart/utils/map_edges_to_graph.dart';
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    final graph = mapEdgesToGraph(entry.edges);
    for (final (:src, :dst, :edgesCount) in entry.cases) {
      test('shortest path of "${entry.id}" "$src - $dst" is $edgesCount', () {
        final result = findShortestPath(graph, src, dst);
        expect(result?.edgesCount, edgesCount);
      });
    }
  }
}

const _data = <({
  String id,
  List<({String dst, int? edgesCount, String src})> cases,
  List<List<String>> edges
})>{
  (
    id: 'edges-0',
    cases: [
      (src: 'w', dst: 'z', edgesCount: 2),
    ],
    edges: [
      ['w', 'x'],
      ['x', 'y'],
      ['z', 'y'],
      ['z', 'v'],
      ['w', 'v']
    ]
  ),
  (
    id: 'edges-1',
    cases: [
      (src: 'y', dst: 'x', edgesCount: 1),
    ],
    edges: [
      ['w', 'x'],
      ['x', 'y'],
      ['z', 'y'],
      ['z', 'v'],
      ['w', 'v']
    ]
  ),
  (
    id: 'edges-2',
    cases: [
      (src: 'a', dst: 'e', edgesCount: 3),
    ],
    edges: [
      ['a', 'c'],
      ['a', 'b'],
      ['c', 'b'],
      ['c', 'd'],
      ['b', 'd'],
      ['e', 'd'],
      ['g', 'f']
    ]
  ),
  (
    id: 'edges-3',
    cases: [
      (src: 'e', dst: 'c', edgesCount: 2),
    ],
    edges: [
      ['a', 'c'],
      ['a', 'b'],
      ['c', 'b'],
      ['c', 'd'],
      ['b', 'd'],
      ['e', 'd'],
      ['g', 'f']
    ]
  ),
  (
    id: 'edges-4',
    cases: [
      (src: 'b', dst: 'g', edgesCount: null),
    ],
    edges: [
      ['a', 'c'],
      ['a', 'b'],
      ['c', 'b'],
      ['c', 'd'],
      ['b', 'd'],
      ['e', 'd'],
      ['g', 'f']
    ]
  ),
  (
    id: 'edges-5',
    cases: [
      (src: 'w', dst: 'e', edgesCount: 1),
    ],
    edges: [
      ['c', 'n'],
      ['c', 'e'],
      ['c', 's'],
      ['c', 'w'],
      ['w', 'e'],
    ]
  ),
  (
    id: 'edges-6',
    cases: [
      (src: 'n', dst: 'e', edgesCount: 2),
    ],
    edges: [
      ['c', 'n'],
      ['c', 'e'],
      ['c', 's'],
      ['c', 'w'],
      ['w', 'e'],
    ]
  ),
  (
    id: 'edges-7',
    cases: [
      (src: 'm', dst: 's', edgesCount: 6),
    ],
    edges: [
      ['m', 'n'],
      ['n', 'o'],
      ['o', 'p'],
      ['p', 'q'],
      ['t', 'o'],
      ['r', 'q'],
      ['r', 's']
    ]
  ),
  (
    id: 'edges-8',
    cases: [
      (src: 'w', dst: 'a', edgesCount: 3),
    ],
    edges: [
      ['x', 'y'],
      ['y', 'z'],
      ['x', 'z'],
      ['y', 'v'],
      ['v', 'w'],
      ['w', 'x'],
      ['w', 'u'],
      ['z', 'b'],
      ['z', 'c'],
      ['c', 'a'],
      ['y', 'a'],
    ]
  ),
};
