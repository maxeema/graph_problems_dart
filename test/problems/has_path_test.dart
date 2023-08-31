import 'package:graph_problems_dart/problems/has_path.dart' as has_path;
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    for (final (:src, :dst, :hasPath) in entry.cases) {
      test('has path "${entry.id}" "$src - $dst" is $hasPath', () {
        expect(has_path.hasPath(entry.graph, src, dst), hasPath);
      });
      test('has path recursive "${entry.id}" "$src - $dst" is $hasPath', () {
        expect(has_path.hasPathRecursive(entry.graph, src, dst), hasPath);
      });
    }
  }
}

const _data = {
  (
    id: 'graph-1',
    cases: [
      (src: 'f', dst: 'k', hasPath: true),
      (src: 'i', dst: 'h', hasPath: true),
      (src: 'f', dst: 'j', hasPath: false),
    ],
    graph: {
      'f': ['g', 'i'],
      'g': ['h'],
      'h': [],
      'i': ['g', 'k'],
      'j': ['i'],
      'k': []
    }
  ),
  (
    id: 'graph-2',
    cases: [
      (src: 'v', dst: 'w', hasPath: true),
      (src: 'v', dst: 'z', hasPath: false),
      (src: 'z', dst: 'x', hasPath: false),
    ],
    graph: {
      'v': ['x', 'w'],
      'w': [],
      'x': [],
      'y': ['z'],
      'z': [],
    }
  ),
};
