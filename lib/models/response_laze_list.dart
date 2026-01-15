class ResponseLazeList<T> {
  int count;
  final List<T> list;
  ResponseLazeList({required this.count, required this.list});
}

class ResponseLazeMap<T> {
  int count;
  final T map;
  ResponseLazeMap({required this.count, required this.map});
}
