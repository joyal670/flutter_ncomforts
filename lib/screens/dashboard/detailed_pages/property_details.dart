// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ncomfort/dims/dim.dart';

import '../../../dims/colors.dart';
import '../../common/widgets.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorCasal,
        title: TextWidget(title: 'Property name'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Carousalslider(),
            height20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(title: "Property Name"),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: colorCasal,
                        size: 24,
                      ),
                      width10,
                      Icon(
                        Icons.share,
                        color: colorGrey,
                        size: 26,
                      ),
                      width15
                    ],
                  ),
                  height5,
                  TextWidget(title: "Property Code : #2545220"),
                  height10,
                  Row(
                    children: [
                      TextWidget(
                        title: "SAR 250,000",
                        textStyle: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      width15,
                      TextWidget(
                          title: "SAR 250,000",
                          textStyle: TextStyle(
                              color: colorDustyGray,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough)),
                      width5,
                      TextWidget(
                          title: "|",
                          textStyle: TextStyle(
                              color: colorMineShaft2,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      width5,
                      TextWidget(
                          title: "2BKH",
                          textStyle: TextStyle(
                              color: colorDoveGray,
                              fontWeight: FontWeight.w500,
                              fontSize: 12)),
                    ],
                  ),
                  height10,
                  TextWidget(
                      title: "Appartment for Rent  ",
                      textStyle: TextStyle(
                          color: colorBoulder,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                  height10,
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: colorCasal,
                      ),
                      TextWidget(
                          title: "Al Quwaiiyah ",
                          textStyle: TextStyle(
                              color: colorBoulder,
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                    ],
                  ),
                  height10,
                  SizedBox(
                    height: 20,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Icon(
                                Icons.ac_unit,
                                color: colorCasal,
                              ),
                              width5,
                              TextWidget(
                                  title: "115 sq. M.",
                                  textStyle: TextStyle(
                                      color: colorScorpion,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11)),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return width20;
                        },
                        itemCount: 10),
                  ),
                  height20,
                  TextWidget(
                      title: "Description",
                      textStyle: TextStyle(
                          color: colorTundora2,
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                  height10,
                  TextWidget(
                      title:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      textStyle: TextStyle(
                          color: colorScorpion,
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                  height25,
                  TextWidget(
                      title: "Amenities",
                      textStyle: TextStyle(
                          color: colorTundora2,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          decoration: TextDecoration.underline)),
                  height20,
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                TextWidget(
                                    title: "Features",
                                    textStyle: TextStyle(
                                      color: colorTundora2,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    )),
                                width10,
                                Expanded(
                                  child: Divider(),
                                )
                              ],
                            ),
                            height10,
                            ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: colorCasal,
                                      ),
                                      width10,
                                      TextWidget(
                                          title: "Central Air Conditioner",
                                          textStyle: TextStyle(
                                            color: colorScorpion2,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          )),
                                      width10,
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) => height10,
                                itemCount: 2)
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => height10,
                      itemCount: 3),
                  height40
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Carousalslider extends StatelessWidget {
  const Carousalslider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        height: 220.0,
        showIndicator: true,
        slideIndicator: CircularSlideIndicator(
            indicatorBorderWidth: 1,
            currentIndicatorColor: colorCarnation,
            indicatorBackgroundColor: colorWhite,
            indicatorBorderColor: colorBlack),
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
