import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:santri_online/model/santri.dart';
import 'package:santri_online/service/api_service.dart';

enum ResultState { Loading, NoData, HasData, Error }

class SantriProvider extends ChangeNotifier {
  final ApiService apiService;

  SantriProvider({required this.apiService}) {
    _fetchRestaurant();
  }

  late Santri _santriResult;
  late ResultState _state;
  String _message = '';

  String get message => _message;

  Santri get result => _santriResult;

  ResultState get state => _state;

  Future<dynamic> _fetchRestaurant() async {
    try {
      _state = ResultState.Loading;
      notifyListeners();
      final santri = await apiService.list();

      if (santri.data.isEmpty) {
        _state = ResultState.NoData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.HasData;
        notifyListeners();
        return _santriResult = santri;
      }
    } catch (e) {
      _state = ResultState.Error;
      notifyListeners();
      return _message = 'Error --> $e';
    }
  }
}
