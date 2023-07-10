class Recipe {
  final String title, description;
  final List<String> ingredients;

  Recipe(this.title, this.description, this.ingredients);

  factory Recipe.toJson(Map<String, dynamic> e) {
    return Recipe(
      e['title'],
      e['description'],
      e['ingredients'],
    );
  }
}