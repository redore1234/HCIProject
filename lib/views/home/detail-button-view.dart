

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../helpers/constants.dart';

class DetailButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  const iconSize = 14.0;
  const padding = 6.0;

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: SvgPicture.asset("assets/icons/right-arrow.svg", height: iconSize, width: iconSize,color: Colors.white,),
      ),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(const Radius.circular( (iconSize + padding*2) / 2),),
        color: Constants.PRIMARY_COLOR,
      ),
    );

  }

}