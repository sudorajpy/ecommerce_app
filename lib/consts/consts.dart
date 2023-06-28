import 'package:ecommerce_app/consts/colors.dart';
import 'package:flutter/material.dart';

import '../models/gadget_model.dart';

export './colors.dart';
export './images.dart';
export './strings.dart';
export './styles.dart';
export 'package:velocity_x/velocity_x.dart';


List<GadgetDetail> cartList = [
  GadgetDetail(name: 'Smart watch', price: '120.00', color: kLightGreen, image: 'assets/images/watch-black.png'),
  GadgetDetail(name: 'Air pods', price: '150.00', color: kLightOrange, image: 'assets/images/airpods.png'),
  GadgetDetail(name: 'Earphone', price: '60.00', color: kOrange, image: 'assets/images/earphone.png'),
];

List<GadgetDetail> gadgetList = [
  GadgetDetail(name: 'smart watch', price: '100.00', color: kLightOrange, image: 'watch-black.png'),
  GadgetDetail(name: 'headphone', price: '77.00', color: kOrange, image: 'headphone_red1.png'),
  GadgetDetail(name: 'apple watch', price: '67.99', color: kLightBlue, image: 'apple-watch.png'),
  GadgetDetail(name: 'earphone', price: '45.50', color: kLightGreen, image: 'earphone.png'),
  GadgetDetail(name: 'airpods', price: '60.00', color: kLightOrange, image: 'airpods.png'),
];
List<Map> gadgetColor = [
  {'color': kLightGreen, 'imageColor': const Color(0xff8ab797),},
  {'color': kLightOrange, 'imageColor': const Color(0xffeec183)},
  {'color': kOrange, 'imageColor': const Color(0xfff69c7a)},
  {'color': kYellow, 'imageColor': const Color(0xffefdb9f)},
  {'color': kLightGreen, 'imageColor': const Color(0xff8ab797)},
];