import 'package:flutter/material.dart';
import 'package:ostad_live_test_module09/recipe.dart';
import 'dart:convert';

import 'json_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final decodedResponse = json.decode(RecipeJsonData().jsonData);

  @override
  Widget build(BuildContext context) {

    List<Recipe> recipes = [];
    final recipesList = decodedResponse['recipes'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipesList.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(4.0),
            title: Text(recipesList[index]['title']),
            subtitle: Text(recipesList[index]['description']),
            leading: const Icon(Icons.cookie),
          );
        },
      ),
    );
  }
}
