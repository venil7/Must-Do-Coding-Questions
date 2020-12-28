import 'package:test/test.dart';
import 'package:tree/dijkstrta.dart';

void main() {
  //https://upload.wikimedia.org/wikipedia/commons/5/57/Dijkstra_Animation.gif
  final graph = Graph(7)
    ..add(1, 2, 7)
    ..add(1, 3, 9)
    ..add(1, 6, 14)
    ..add(2, 3, 10)
    ..add(2, 4, 15)
    ..add(3, 4, 11)
    ..add(3, 6, 2)
    ..add(4, 5, 6)
    ..add(5, 6, 9);

  test('Dijkstra 1-->5', () {
    final r = dijkstra(graph, 1, 5);
    print(r);
    expect(r, 20);
  });

  test('Dijkstra 5-->1', () {
    final r = dijkstra(graph, 5, 1);
    print(r);
    expect(r, 20);
  });

  test('Dijkstra 2-->5', () {
    final r = dijkstra(graph, 2, 5);
    print(r);
    expect(r, 21);
  });
}
