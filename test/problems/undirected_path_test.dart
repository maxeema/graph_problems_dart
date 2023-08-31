import 'package:graph_problems_dart/problems/undirected_path.dart';
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    for (final (src: src, dst: dst, hasPath: hasPath) in entry.scenarios) {
      test(
        'undirected path "${entry.id}" "$src - $dst" has path $hasPath',
        () {
          final result = undirectedPath(entry.edges, src, dst);
          expect(result, hasPath);
        },
      );
      test(
        'undirected path recursive "${entry.id}" "$src - $dst" has path $hasPath',
        () {
          final result = undirectedPathRecursive(entry.edges, src, dst);
          expect(result, hasPath);
        },
      );
    }
  }
}

const _data = {
  (
    id: 'edges-1',
    scenarios: [
      (src: 'j', dst: 'm', hasPath: true),
      (src: 'm', dst: 'j', hasPath: true),
      (src: 'n', dst: 'o', hasPath: true),
      (src: 'l', dst: 'j', hasPath: true),
      (src: 'i', dst: 'n', hasPath: false),
      (src: 'o', dst: 'k', hasPath: false),
      (src: 'i', dst: 'o', hasPath: false),
    ],
    edges: [
      ['i', 'j'],
      ['k', 'i'],
      ['m', 'k'],
      ['k', 'l'],
      ['o', 'n']
    ]
  ),
  (
    id: 'edges-2',
    scenarios: [
      (src: 'a', dst: 'b', hasPath: true),
      (src: 'a', dst: 'c', hasPath: true),
      (src: 'r', dst: 't', hasPath: true),
      (src: 'r', dst: 'b', hasPath: false),
    ],
    edges: [
      ['b', 'a'],
      ['c', 'a'],
      ['b', 'c'],
      ['q', 'r'],
      ['q', 's'],
      ['q', 'u'],
      ['q', 't'],
    ]
  ),
  (
    id: 'edges-3',
    scenarios: [
      (src: 'r', dst: 't', hasPath: true),
      (src: 't', dst: 's', hasPath: true),
    ],
    edges: [
      ['s', 'r'],
      ['t', 'q'],
      ['q', 'r'],
    ]
  ),
};
