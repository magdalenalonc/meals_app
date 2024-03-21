import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      // to remove an item
      // 'm' is a shortcut of 'meal' to not confuse this (m) with 'meal'
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      // diffrent syntax; to keep all existing items and also add a new one
      // ... is a spread operator and can be used on a list
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
