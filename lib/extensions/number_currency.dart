extension Currency on double {
  String toCad() {
    return '${toStringAsFixed(2)} \$';
  }
}
