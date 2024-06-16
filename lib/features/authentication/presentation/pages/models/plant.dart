// DuckCloud

class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String description;
  bool isSelected;

  Plant({
    required this.plantId,
    required this.price,
    required this.category,
    required this.plantName,
    required this.size,
    required this.rating,
    required this.humidity,
    required this.temperature,
    required this.imageURL,
    required this.isFavorated,
    required this.description,
    required this.isSelected,
  });

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
      plantId: 0,
      price: 22,
      category: 'Apartment',
      plantName: 'Sansevieria',
      size: 'Small',
      rating: 4.5,
      humidity: 34,
      temperature: '23 - 34',
      imageURL: 'assets/images/plant-one.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most regions of the world and can survive even in the toughest climatic conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 1,
      price: 11,
      category: 'Workplace',
      plantName: 'Philodendron',
      size: 'Medium',
      rating: 4.8,
      humidity: 56,
      temperature: '19 - 22',
      imageURL: 'assets/images/plant-two.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most regions of the world and can survive even in the toughest climatic conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 2,
      price: 18,
      category: 'Apartment',
      plantName: 'Coastal Daisy',
      size: 'Large',
      rating: 4.7,
      humidity: 34,
      temperature: '22 - 25',
      imageURL: 'assets/images/plant-three.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most parts of the world and can survive even in the toughest weather conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 3,
      price: 30,
      category: 'Office',
      plantName: 'Large Bluestem',
      size: 'Small',
      rating: 4.5,
      humidity: 35,
      temperature: '23 - 28',
      imageURL: 'assets/images/plant-one.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most parts of the world and can survive even in the toughest weather conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 4,
      price: 24,
      category: 'Recommended',
      plantName: 'Large Bluestem',
      size: 'Large',
      rating: 4.1,
      humidity: 66,
      temperature: '12 - 16',
      imageURL: 'assets/images/plant-four.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most parts of the world and can survive even in the toughest weather conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 5,
      price: 24,
      category: 'Workplace',
      plantName: 'Sage',
      size: 'Medium',
      rating: 4.4,
      humidity: 36,
      temperature: '15 - 18',
      imageURL: 'assets/images/plant-five.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most parts of the world and can survive even in the toughest weather conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 6,
      price: 19,
      category: 'Garden',
      plantName: 'Plumbago',
      size: 'Small',
      rating: 4.2,
      humidity: 46,
      temperature: '23 - 26',
      imageURL: 'assets/images/plant-six.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most parts of the world and can survive even in the toughest weather conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 7,
      price: 23,
      category: 'Garden',
      plantName: 'Tritonia',
      size: 'Medium',
      rating: 4.5,
      humidity: 34,
      temperature: '21 - 24',
      imageURL: 'assets/images/plant-seven.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most parts of the world and can survive even in the toughest weather conditions.',
      isSelected: false,
    ),
    Plant(
      plantId: 8,
      price: 46,
      category: 'Recommended',
      plantName: 'Tritonia',
      size: 'Medium',
      rating: 4.7,
      humidity: 46,
      temperature: '21 - 25',
      imageURL: 'assets/images/plant-eight.png',
      isFavorated: false,
      description:
          'This plant is one of the best plants. It grows in most parts of the world and can survive even in the toughest weather conditions.',
      isSelected: false,
    ),
  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> travelList = Plant.plantList;
    return travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> selectedPlants = Plant.plantList;
    return selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}