// home_page.dart — Main catalog screen
// - Shows search box, category selector, featured products and new items list.
// - Uses Plant.plantList as the in-memory data source and updates local state
//   (selectedIndex, favorites) with setState().

import 'package:flutter/material.dart';
import 'package:planet_app/const/constants.dart';
import 'package:planet_app/models/plant.dart';
import 'package:planet_app/screens/detail_page.dart';
import 'package:planet_app/widgets/extensions.dart';
import 'package:planet_app/widgets/plant_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Plant> _plantList = Plant.plantList;

  bool toggleIsFavorit(bool isFavorites) {
    return !isFavorites;
  }

  final List<String> _plantTypes = [
    '| پیشنهادی |',
    '| آپارتمانی |',
    '| محل‌کار |',
    '| گل باغچه‌ایی |',
    '| گل سمی |',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Box
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mic,
                        color: Constants.blackColor.withOpacity(0.6),
                      ),
... (truncated due to message size)