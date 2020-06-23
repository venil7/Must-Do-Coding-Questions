class Link {
  Link(this.val, {this.next});
  final int val;
  Link next;
  toList() => [this.val, ...(next?.toList() ?? [])];
}

Link append(int val, Link link) {
  if (link == null) return Link(val);
  return Link(link.val, next: append(val, link.next));
}

Link reverse(Link link) {
  if (link.next == null) return link;
  return append(link.val, reverse(link.next));
}

Link reverse2(Link link) {
  Link prev = null;
  Link curr = link;
  Link next = null;
  while (curr != null) {
    next = curr.next;
    curr.next = prev;
    prev = curr;
    curr = next;
  }
  return prev;
}

// a -> b -> c
