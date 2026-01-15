class TsMap<K, V> {
  final Map<K, V> _map;

  TsMap([Map<K, V>? initial]) : _map = initial ?? {};

  V? get(K key) => _map[key];

  void set(K key, V value) {
    _map[key] = value;
  }

  bool has(K key) => _map.containsKey(key);

  bool delete(K key) {
    return _map.remove(key) != null;
  }

  void clear() => _map.clear();

  int get size => _map.length;

  Iterable<K> get keys => _map.keys;

  Iterable<V> get values => _map.values;

  Iterable<MapEntry<K, V>> get entries => _map.entries;

  void forEach(void Function(V value, K key) fn) {
    _map.forEach((key, value) => fn(value, key));
  }

  V getOrSet(K key, V Function() factory) {
    return _map.putIfAbsent(key, factory);
  }

  Map<K, V> toMap() => Map.unmodifiable(_map);

  @override
  String toString() => _map.toString();
}
