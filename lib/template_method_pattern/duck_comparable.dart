class Duck implements Comparable<Duck> {
  Duck({required this.name, required this.weight});

  final String name;
  final int weight;

  @override
  int compareTo(Duck other) {
    if (weight < other.weight) {
      return -1;
    } else if (weight == other.weight) {
      return 0;
    } else {
      // weight > other.weight
      return 1;
    }
  }

  @override
  String toString() {
    return '$name: $weight';
  }
}
