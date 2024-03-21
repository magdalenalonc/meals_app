import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/data/dummy_data.dart';

// only for learning purpose, because we don't need to 'provide' dummyMeals anywhere. It's just a list which we can normally import in our files
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
