import 'package:flutter/material.dart';
import 'package:authentication/features/authentication/presentation/pages/const/constants.dart';
import 'package:authentication/features/authentication/presentation/pages/models/plant.dart';
import 'package:authentication/features/authentication/presentation/pages/screens/root.dart';
import 'package:authentication/features/authentication/presentation/widgets/extensions.dart';

class DetailPage extends StatefulWidget {
  final int plantId;
  const DetailPage({super.key, required this.plantId});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Plant> myCart = [];

  bool toggleIsFavorite(bool isFavorites) {
    return !isFavorites;
  }

  bool toggleIsSelected(bool isSelected) {
    return !isSelected;
  }

  void addToCart(BuildContext context) {
    setState(() {
      bool isSelected = toggleIsSelected(Plant.plantList[widget.plantId].isSelected);
      Plant.plantList[widget.plantId].isSelected = isSelected;

      final List<Plant> addedToCartPlants = Plant.addedToCartPlants();
      myCart = addedToCartPlants.toSet().toList();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Center(
                child: Plant.plantList[widget.plantId].isSelected
                    ? Text(
                        'Plant ${Plant.plantList[widget.plantId].plantName} added to cart successfully',
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontFamily: 'CloudSoftB',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    : Text(
                        'Plant ${Plant.plantList[widget.plantId].plantName} removed from cart successfully',
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontFamily: 'CloudSoftB',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            backgroundColor: Plant.plantList[widget.plantId].isSelected
                ? Colors.greenAccent.withOpacity(0.9)
                : Colors.redAccent.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant> plantList = Plant.plantList;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 390,
                  child: Image.asset(plantList[widget.plantId].imageURL),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 80,
                    left: 30,
                    right: 30,
                  ),
                  height: size.height * 0.8,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        plantList[widget.plantId].plantName,
                        style: TextStyle(
                          color: Constants.primaryColor,
                          fontFamily: 'Verdana',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Constants.primaryColor),
                              Text(
                                plantList[widget.plantId].rating.toString().englishNumber,
                                style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: 'Verdana',
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                height: 32,
                                child: Text(
                                  '\$',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 31, 84, 33),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                plantList[widget.plantId].price.toString().englishNumber,
                                style: TextStyle(
                                  color: Constants.blackColor,
                                  fontFamily: 'Verdana',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        plantList[widget.plantId].description,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Constants.blackColor.withOpacity(0.7),
                          fontFamily: 'iranSans',
                          height: 1.6,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.8,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      PlantFeature(
                        title: 'Plant Size',
                        plantFeature: plantList[widget.plantId].size,
                      ),
                      PlantFeature(
                        title: 'Humidity',
                        plantFeature: plantList[widget.plantId].humidity.toString().englishNumber,
                      ),
                      PlantFeature(
                        title: 'Temperature',
                        plantFeature: plantList[widget.plantId].temperature.englishNumber,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Constants.primaryColor.withOpacity(0.3),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bool isFavorited = toggleIsFavorite(plantList[widget.plantId].isFavorated);
                      plantList[widget.plantId].isFavorated = isFavorited;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Constants.primaryColor.withOpacity(0.3),
                    ),
                    child: plantList[widget.plantId].isFavorated
                        ? Icon(
                            Icons.favorite,
                            color: Constants.primaryColor,
                          )
                        : Icon(
                            Icons.favorite_border_outlined,
                            color: Constants.primaryColor,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * 0.9,
        height: 50.0,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Constants.primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0.1, 1.1),
                    blurRadius: 5.0,
                    color: Constants.primaryColor.withOpacity(0.3),
                  ),
                ],
              ),
              child: InkResponse(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RootPage(bottomIndex: 2),
                    ),
                  );
                },
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: plantList[widget.plantId].isSelected ? Colors.red : Constants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0.1, 1.1),
                      blurRadius: 5.0,
                      color: Constants.primaryColor.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Center(
                  child: InkResponse(
                    onTap: () {
                      addToCart(context);
                    },
                    child: Text(
                      plantList[widget.plantId].isSelected ? 'Remove from Cart' : 'Add to Cart',
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Verdana',
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String title;
  final String plantFeature;

  const PlantFeature({
    Key? key,
    required this.title,
    required this.plantFeature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
          Text(
            plantFeature,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
