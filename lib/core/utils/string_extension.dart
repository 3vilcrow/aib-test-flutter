extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String incrementFinalIdInUrl() {
    String id = substring(length - 2, length - 1);
    int numberId = int.parse(id) + 1;
    return replaceRange(length - 2, length - 1, numberId.toString());
  }

  String decrementFinalIdInUrl() {
    String id = substring(length - 2, length - 1);
    int numberId = int.parse(id) - 1;
    return replaceRange(length - 2, length - 1, numberId.toString());
  }
}
