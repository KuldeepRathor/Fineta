import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HowToSpend with ChangeNotifier {
  double _income = 0;
  double _rent = 0;
  double _emi = 0;
  double _otherRecurring = 0;
  double _savings = 0;

  double _availableMoney = 0;

  List<String> _itemName = [];
  List<double> _itemPercent = [];
  List<PieChartSectionData> _data = [];
  List<PieChartSectionData> _dummyData = [];
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple
  ];

  double _availablePercentage = 100;

  double get income => _income;
  double get rent => _rent;
  double get emi => _emi;
  double get otherRecurring => _otherRecurring;
  double get availablePercentage => _availablePercentage;
  double get savings => _savings;
  double get availableMoney => _availableMoney;

  List get itemName => _itemName;
  List get itemPercent => _itemPercent;
  List get data => _data;
  List get dummyData => _dummyData;

  void setRecurringAmounts(
      double income, double rent, double emi, double otherRecurring) {
    _income = income;
    _rent = rent;
    _emi = emi;
    _otherRecurring = otherRecurring;
  }

  void addToItems(String itemName, double itemPercent) {
    _itemName.add(itemName);
    _itemPercent.add(itemPercent);
    notifyListeners();
  }

  void updateItems(
      String itemName, double itemPercent, int index, double value) {
    _itemName[index] = itemName;
    _itemPercent[index] = itemPercent;
    _availablePercentage += value;
    notifyListeners();
  }

  void deleteItems(int index) {
    _itemName.removeAt(index);
    _itemPercent.removeAt(index);
    notifyListeners();
  }

  void decreasePercentage(double value) {
    _availablePercentage -= value;
    notifyListeners();
  }

  void increasePercentage(double value) {
    _availablePercentage = _availablePercentage + value;
    notifyListeners();
  }

  void addFinalSavings() {
    _availableMoney = _income - (_emi + _rent + _otherRecurring);
    _savings = (_availableMoney * _availablePercentage) / 100;
    notifyListeners();
  }

  void addPieChartData() {
    for (int i = 0; i < _itemName.length; i++) {
      var dataToBeAdded = PieChartSectionData(
        color: colors[i % 5],
        value: _itemPercent[i],
        title: "${_itemName[i]}\n${_itemPercent[i]}%",
        radius: 50,
        titleStyle: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff)),
      );

      data.add(dataToBeAdded);
    }
  }

  void addDummyData() {
    for (int i = 0; i < 5; i++) {
      var dataToBeAdded = PieChartSectionData(
        color: colors[i % 5],
        value: i * 10,
        title: "${i * 10}",
        radius: 50,
        titleStyle: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff)),
      );

      dummyData.add(dataToBeAdded);
    }
  }

  void clearDummyData() {
    dummyData.clear();
  }

  List<PieChartSectionData>? getSectionData(BuildContext context) {
    if (_itemName.isEmpty) {
      return _dummyData;
    } else {
      return _data;
    }
  }
}
