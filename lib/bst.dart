// binary search tree
class Node<T extends Comparable<T>> {
  Node<T> left;
  Node<T> right;
  T val;
  Node({this.val, this.left, this.right});
  bool get hasLeft {
    return left != null;
  }

  bool get hasRight {
    return right != null;
  }

  bool eq(Node<T> other) {
    return val == other.val;
  }

  bool operator <(Node<T> other) {
    assert(val != null);
    assert(other.val != null);
    return val.compareTo(other.val) < 0;
  }

  bool operator >(Node<T> other) {
    assert(val != null);
    assert(other.val != null);
    return val.compareTo(other.val) > 0;
  }

  Node<T> add(T val) {
    assert(val != null);
    if (this.val == null) {
      this.val = val;
      return this;
    }
    final other = Node<T>(val: val);

    return _addNode(other);
  }

  Node<T> _addNode(Node<T> other) {
    if (other < this) {
      if (!hasLeft) {
        left = other;
      } else {
        if (other < left) {
          left._addNode(other);
        } else if (other > left) {
          left = other._addNode(left);
        }
      }
    } else if (other > this) {
      if (!hasRight) {
        right = other;
      } else {
        if (other > right) {
          right._addNode(other);
        } else if (other < right) {
          right = other._addNode(right);
        }
      }
    }
    return this;
  }

  String toString() {
    var s = '${val} ';
    if (right != null) s += right.toString();
    if (left != null) s += left.toString();
    return s;
  }

  List<T> toList() {
    return [
      ...(hasLeft ? left.toList() : []),
      val,
      ...(hasRight ? right.toList() : [])
    ];
  }

  int depth() {
    final l = hasLeft ? 1 + left.depth() : 0;
    final r = hasRight ? 1 + right.depth() : 0;
    return l > r ? l : r;
  }

  bool balanced() {
    final l = hasLeft ? left.depth() : 0;
    final r = hasRight ? right.depth() : 0;
    return (l - r).abs() <= 1;
  }

  Node<T> find(T val) {
    assert(val != null);
    if (val == val) return this;

    final other = Node<T>(val: val);
    if (other > this) {
      return hasRight ? right.find(val) : null;
    } else if (other < this) {
      return hasLeft ? left.find(val) : null;
    }
    return null;
  }

  bool hasSubtree(Node<T> other) {
    assert(other.val != null);
    final _this = find(other.val);

    bool Function(Node<T>, Node<T>) compare;

    compare = (Node<T> l, Node<T> r) {
      if (l == null && r == null) return true;
      if ((l == null && r != null) || (l != null && r == null)) return false;
      if (l.eq(r)) {
        return compare(l.left, r.left) && compare(l.right, r.right);
      }
      return false;
    };
    if (_this != null) {
      return compare(_this, other);
    }
    return false;
  }
}
