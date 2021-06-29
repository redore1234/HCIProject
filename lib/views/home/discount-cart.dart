
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiscountCard extends StatelessWidget {

  List<Color> colors;
  Widget child;
  List<double> stops;


  DiscountCard(this.colors, this.child);
  DiscountCard.withStops(this.colors, this.stops, this.child);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        width: 190.0,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(const Radius.circular(12.0)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: this.stops,
            colors: this.colors,
          ),
        ),
        child: this.child,
      ),
    );
  }


}
