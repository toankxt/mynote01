class LocalRepository {
  /// Xây dựng một hàm tạo private
  LocalRepository._internal();

  /// Lưu cache để không phải tạo lại nhiều đối tượng
  static final _cache = <String, LocalRepository>{};

  static LocalRepository get instance =>
      _cache.putIfAbsent('LocalPersi', () => LocalRepository._internal());
}
