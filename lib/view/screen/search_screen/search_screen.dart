
import 'package:flutter/material.dart';

import '../../../utils/const_image.dart';
import '../../../utils/const_string.dart';
import 'filter_drawer.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  List gridViewItemList = [
    {"title": ConstString.homeClean, "image": ConstImage.cleanHome},
    {"title": ConstString.carWash, "image": ConstImage.carWash},
    {
      "title": ConstString.airConditionMaintenance,
      "image": ConstImage.airCondition
    },
    {"title": ConstString.homeClean, "image": ConstImage.houseKeeper},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterDrawer(),
      appBar: AppBar(
        actions: [

          Expanded(
            child: SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: TextFormField(

                  decoration: InputDecoration(
                    hintText: ConstString.searchByCategories,
                      hintStyle: TextStyle(
                        color: Color(0xFFA7A7A7)
                      ),
                      prefixIcon: Icon(
                          Icons.search_outlined,
                        color: Color(0xFFA7A7A7),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE7F0FD),
                        ),
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ),
          ),

          Builder(
            builder: (context) => IconButton(
              icon: Image.asset(ConstImage.filter),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ConstString.topFeaturedServices,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisExtent: 135),
                itemBuilder: (context, index) {
                  var item = gridViewItemList[index];
                  return Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF6AA4EE)),
                          ),
                        ),
                        child: Center(
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                item['image'],
                                width: 50,
                                height: 50,
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        item['title'],
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
