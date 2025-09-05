class PlantData {
  static List<Map<String, String>> getPlants() {
    return [
      {'name': 'Tradescantia Flume', 'price': '\$1.99', 'rating': '4.8'},
      {'name': 'Peperomia Clusia', 'price': '\$2.99', 'rating': '4.7'},
      {'name': 'Calathea Freddie', 'price': '\$3.99', 'rating': '4.9'},
      {'name': 'Monstera Deliciosa', 'price': '\$4.99', 'rating': '4.8'},
      {'name': 'Snake Plant', 'price': '\$2.49', 'rating': '4.6'},
      {'name': 'Peace Lily', 'price': '\$3.49', 'rating': '4.8'},
    ];
  }

  static Map<String, String> getPlant(int index) {
    final plants = getPlants();
    return plants[index % plants.length];
  }
}