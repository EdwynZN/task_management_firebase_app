import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class TaskFilterController extends ChangeNotifier {
  Query _query = FirebaseDatabase.instance.ref().child('tasks');
  bool? _showCompleted;

  Query get query => _query;
  bool? get showCompleted => _showCompleted;

  void toggleQuery(bool? showCompleted) {
    if (showCompleted == _showCompleted) {
      return;
    }
    _showCompleted = showCompleted;
    _query = FirebaseDatabase.instance.ref().child('tasks');
    _query = switch (showCompleted) {
      null => _query,
      final value => _query.orderByChild('completed').equalTo(value),
    };
    notifyListeners();
  }
}
