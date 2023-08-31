import 'package:graph_problems_dart/problems/has_path.dart';
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    for (final (src: src, dst: dst, hasPath: has) in entry.scenarios) {
      test('has path "${entry.id}" "$src - $dst" is $has', () {
        expect(hasPath(entry.graph, src, dst), has);
      });
      test('has path recursive "${entry.id}" "$src - $dst" is $has', () {
        expect(hasPathRecursive(entry.graph, src, dst), has);
      });
    }
  }
}

const _data = {
  (
    id: 'graph-1',
    scenarios: [
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
    scenarios: [
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
