extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String incrementFinalIdInUrl() {
    return replaceAllMapped(RegExp(r'(\d+)/$'), (match) {
      int parsedNumber = int.parse(match.group(1)!);
      int incrementedNumber = parsedNumber + 1;
      return '$incrementedNumber/';
    });
  }

  String decrementFinalIdInUrl() {
    return replaceAllMapped(RegExp(r'(\d+)/$'), (match) {
      int parsedNumber = int.parse(match.group(1)!);
      int incrementedNumber = parsedNumber - 1;
      return '$incrementedNumber/';
    });
  }
}
