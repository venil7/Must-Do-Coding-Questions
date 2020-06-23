import 'package:stack/stack.dart';

class Queue {
  final Stack<int> stack1;
  final Stack<int> stack2;
  Queue()
      : stack1 = Stack<int>(),
        stack2 = Stack<int>();
  bool get empty => stack1.isEmpty && stack2.isEmpty;

  void enqueue(int val) {
    if (empty) return stack2.push(val);
    _pour(stack2, stack1);
    stack2.push(val);
    _pour(stack1, stack2);
  }

  void _pour(Stack<int> from, Stack<int> to) {
    while (from.isNotEmpty) {
      to.push(from.pop());
    }
  }

  int dequeue() => stack2.pop();

  void enqueueMany(List<int> list) {
    for (var v in list) enqueue(v);
  }

  List<int> dequeueMany() {
    if (empty) return [];
    return [dequeue(), ...dequeueMany()];
  }
}
