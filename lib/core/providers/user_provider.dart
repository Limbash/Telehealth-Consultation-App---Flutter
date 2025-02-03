import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:telehealth_consultation_app/data/models/user_model.dart';

final userProvider = StateProvider<User?>((ref) {
  return null; // Initially, no user is logged in
});
