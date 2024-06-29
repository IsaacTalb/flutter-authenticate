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
      plantName: 'Rumduol',
      size: 'Small',
      rating: 4.5,
      humidity: 34,
      temperature: '23 - 34',
      imageURL: 'assets/images/Romdoul.png',
      isFavorated: false,
      description:
          'Rumduol, Cambodia’s national flower, has fragrant yellow-white flowers, which are particularly sweet smelling in the early evening. The plant can grow as tall as 12 feet and bears a deep red fruit when ripe. As well as being used in traditional medicines to treat dizziness, fevers, and high blood pressure, Rumduol’s sweet-scented blooms have been used for generations to produce lip wax for ladies. The flower is considered so pretty that its name is even used in the Khmer language when referring to a beautiful Cambodian woman.',
      isSelected: false,
    ),
    Plant(
      plantId: 1,
      price: 11,
      category: 'Workplace',
      plantName: 'Lemon Grass',
      size: 'Medium',
      rating: 4.8,
      humidity: 56,
      temperature: '19 - 22',
      imageURL: 'assets/images/lemon-grass.png',
      isFavorated: false,
      description:
          'A ubiquitous ingredient in Khmer cuisine, lemongrass can be chopped up and used in a salad or with fresh vegetables and other dishes or crushed slightly, tied in a bunch, and soaked in soups to release its unmistakable Asian flavors.',
      isSelected: false,
    ),
    Plant(
      plantId: 2,
      price: 18,
      category: 'Apartment',
      plantName: 'Nepenthes Holdenii',
      size: 'Large',
      rating: 4.7,
      humidity: 34,
      temperature: '22 - 25',
      imageURL: 'assets/images/Nepenthes_Holdenii.png',
      isFavorated: false,
      description:
          'And it seems Cambodia’s flora also has a sense of humor. Pictures of Nepenthes Holdenii, also known as the “Penis Plant,” have gone viral on the internet because of their amusing shape. However, the Cambodian Ministry of Environment has asked that people refrain from picking the phallic flora as it is extremely rare. As always, folks, take nothing away but a photo.',
      isSelected: false,
    ),
    Plant(
      plantId: 3,
      price: 30,
      category: 'Office',
      plantName: 'Rice Paddy Herb',
      size: 'Small',
      rating: 4.5,
      humidity: 35,
      temperature: '23 - 28',
      imageURL: 'assets/images/Rice_Paddy_Herb.png',
      isFavorated: false,
      description:
          'As its name suggests, this herb commonly grows in rice fields. It is used to give a tangy, lemony taste to soups.',
      isSelected: false,
    ),
    Plant(
      plantId: 4,
      price: 24,
      category: 'Recommended',
      plantName: 'Holy Basil',
      size: 'Large',
      rating: 4.1,
      humidity: 66,
      temperature: '12 - 16',
      imageURL: 'assets/images/holybasil.png',
      isFavorated: false,
      description:
          'Unavoidable in Thailand and Cambodia, holy basil is used in delicious stir-fried pork dishes and on other fresh vegetables for vegetarians who enjoy the taste.',
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
