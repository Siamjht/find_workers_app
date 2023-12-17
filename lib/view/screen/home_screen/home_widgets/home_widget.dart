
import 'package:flutter/material.dart';

import '../../../../utils/const_image.dart';
import '../../../../utils/const_string.dart';
import 'card_item.dart';

class HomeScreenItems extends StatelessWidget {
  const HomeScreenItems({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width ;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ConstString.carWash,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Text(
              ConstString.seeAll,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF0668E3),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(image: ConstImage.carWash1, location: "Abu Dhabi", name: "John Doe",),
            CardItem(image: ConstImage.carWash2, location: "Abu Dhabi", name: "John Doe",)
          ],
        ),

        const SizedBox(height: 24,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ConstString.homeClean,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Text(
              ConstString.seeAll,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF0668E3),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(image: ConstImage.homeClean1, location: "Abu Dhabi", name: "John Doe",),
            CardItem(image: ConstImage.homeClean2, location: "Abu Dhabi", name: "John Doe",)
          ],
        ),

        const SizedBox(height: 24,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ConstString.airConditionMaintenance,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Text(
              ConstString.seeAll,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF0668E3),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(image: ConstImage.airCon1, location: "Abu Dhabi", name: "John Doe",),
            CardItem(image: ConstImage.airCon2, location: "Abu Dhabi", name: "John Doe",)
          ],
        ),

      ],
    );
  }
}
