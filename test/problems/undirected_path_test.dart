import 'package:graph_problems_dart/problems/undirected_path.dart';
import 'package:test/test.dart';

void main() {
  for (final entry in _data) {
    for (final (:src, :dst, :hasPath) in entry.cases) {
      test(
        'undirected path "${entry.id}" "$src - $dst" has path $hasPath',
        () {
          expect(undirectedPath(entry.edges, src, dst), hasPath);
        },
      );
      test(
        'undirected path recursive "${entry.id}" "$src - $dst" has path $hasPath',
        () {
          expect(undirectedPathRecursive(entry.edges, src, dst), hasPath);
        },
      );
    }
  }
}

const _data = {
  (
    id: 'edges-1',
    cases: [
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
    cases: [
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
    cases: [
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
