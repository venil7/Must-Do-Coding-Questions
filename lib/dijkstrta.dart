// 00 01 02 03 04
// 05 06 07 08 09
// 10 11 12 13 14

import 'dart:math';

class Graph {
  final List<num> _graph;
  final num _length;
  Graph(int n)
      : _length = n,
        _graph = List<int>.generate(n * n, (index) {
          final from = index ~/ n; // y
          final to = index % n; // x
          return from == to ? 0 : null;
        });

  add(num from, num to, int val) {
    // final n = length;
    _graph[from * length + to] = val;
    _graph[to * length + from] = val; //backwards path
  }

  weight(num from, num to) => _graph[from * length + to];

  List<num> neighbours(num from) {
    final res = List<num>();
    for (var to = 0; to < length; to++) {
      final w = weight(from, to) ?? 0;
      if (w > 0) {
        res.add(to);
      }
    }
    return res;
  }

  num get length => _length;
}

num dijkstra(Graph graph, num from, num to) {
  final visited = List<bool>.generate(graph.length, (i) => i == from);
  final weights =
      List<num>.generate(graph.length, (i) => i == from ? 0 : double.infinity);

  final queue = List<num>.from([from]);

  while (!visited[to] /*|| queue.isEmpty*/) {
    final current = queue.removeAt(0);

    final unvisitedNeigbours =
        graph.neighbours(current).where((n) => !visited[n]).toList();

    for (var neighbour in unvisitedNeigbours) {
      final newWeight = weights[current] + graph.weight(current, neighbour);
      weights[neighbour] = min(weights[neighbour], newWeight);
      queue.add(neighbour);
    }

    visited[current] = true;
  }

  return weights[to];
}
