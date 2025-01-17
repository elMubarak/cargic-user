import 'package:cargic_user/screens/change_car_details_screens/add_new_vehicle_screen.dart';
import 'package:cargic_user/screens/change_car_details_screens/change_vehicle_screen.dart';
import 'package:cargic_user/utils/car_names.dart';
import 'package:cargic_user/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/car_logo.dart';

class CarInfoDash extends StatelessWidget {
  CarInfoDash({
    Key key,
    this.onTap,
    this.carName,
    this.fuelType,
    this.carLogo,
    this.isShaddow,
    this.isBorder,
  }) : super(key: key);
  final Function onTap;
  final String carName;
  final String fuelType;
  String carLogo;
  final bool isShaddow;
  final bool isBorder;
  @override
  Widget build(BuildContext context) {
    if (carName == CarNames.honda) {
      carLogo = CarLogos.honda;
    } else if (carName == CarNames.bmw) {
      carLogo = CarLogos.bmw;
    } else if (carName == CarNames.kia) {
      carLogo = CarLogos.kia;
    } else if (carName == CarNames.ford) {
      carLogo = CarLogos.ford;
    } else if (carName == CarNames.mercedes) {
      carLogo = CarLogos.mercedes;
    } else if (carName == CarNames.audi) {
      carLogo = CarLogos.audi;
    } else if (carName == CarNames.toyota) {
      carLogo = CarLogos.toyota;
    } else if (carName == CarNames.volvo) {
      carLogo = CarLogos.volvo;
    } else {
      carLogo = 'images/brand_logo.svg';
    }
    return GestureDetector(
      onTap: () {
        (carName != null && fuelType != null)
            ? Navigator.of(context).pushNamed(ChangeVehicleScreen.id)
            : Navigator.of(context).pushNamed(AddVehicleScreen.id);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: (isBorder != null)
              ? (isBorder)
                  ? 0
                  : 15
              : 15,
          vertical: (isBorder != null)
              ? (isBorder)
                  ? 0
                  : 10
              : 10,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
        decoration: BoxDecoration(
          color: CargicColors.plainWhite,
          borderRadius: BorderRadius.circular(5),
          border: (isBorder != null)
              ? (isBorder)
                  ? Border.all(
                      width: 1.5,
                      color: CargicColors.boringWhite,
                    )
                  : Border.all(color: Colors.transparent)
              : Border.all(color: Colors.transparent),
          boxShadow: [
            (isShaddow != null)
                ? (isShaddow)
                    ? BoxShadow(
                        color: CargicColors.cosmicShadow,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 2.5),
                      )
                    : BoxShadow(color: Colors.transparent)
                : BoxShadow(color: Colors.transparent),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //car logo container
            Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:
                      Border.all(width: 2.5, color: CargicColors.smoothGray)),
              child: CarLogo(
                  carLogo:
                      (carLogo != null) ? carLogo : 'images/brand_logo.svg'),
            ),
            //car name and fuel type
            SizedBox(width: 11),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    child: Text(
                      (carName != null) ? carName : 'Tap to add your ',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CargicColors.pitchBlack,
                        fontSize: (carName != null) ? 18 : 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    (fuelType != null) ? fuelType : 'vehicle',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: CargicColors.pitchBlack,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            //space
            Flexible(child: Container()),
            //change info button
            GestureDetector(
              onTap: () {
                (carName != null && fuelType != null)
                    ? Navigator.of(context).pushNamed(ChangeVehicleScreen.id)
                    : Navigator.of(context).pushNamed(AddVehicleScreen.id);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  color: CargicColors.subtleWhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: CargicColors.cosmicShadow,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 2.5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    (carName != null && fuelType != null) ? 'Change' : 'Add',
                    style: TextStyle(color: CargicColors.grimBlack),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
