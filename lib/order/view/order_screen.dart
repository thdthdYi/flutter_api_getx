import 'package:flutter/material.dart';

import '../component/order_card.dart';
import '../model/order_model.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('주문'),
      ),
    );
  }
}
