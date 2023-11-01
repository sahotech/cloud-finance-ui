// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_finance_ui/widgets/bar-graph/individual_bar.dart';

class BarData {
  final double janAmount;
  final double febAmount;
  final double marAmount;
  final double aprAmount;
  final double mayAmount;
  final double junAmount;
  BarData({
    required this.janAmount,
    required this.febAmount,
    required this.marAmount,
    required this.aprAmount,
    required this.mayAmount,
    required this.junAmount,
  });

  List<IndividualBar> bardata = [];

  void initializeData() {
    bardata = [
      IndividualBar(x: 0, lefty: janAmount, righty: 350),
      IndividualBar(x: 1, lefty: febAmount, righty: 590),
      IndividualBar(x: 2, lefty: marAmount, righty: 190),
      IndividualBar(x: 3, lefty: aprAmount, righty: 380),
      IndividualBar(x: 4, lefty: mayAmount, righty: 650),
      IndividualBar(x: 5, lefty: junAmount, righty: 450),
    ];
  }
}
