import 'package:ecommerce_app/consts/colors.dart';
import 'package:ecommerce_app/models/gadget_model.dart';
import 'package:ecommerce_app/widgets/common_button.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';



class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, this.gadgetDetail}) : super(key: key);

  final GadgetDetail? gadgetDetail;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> with TickerProviderStateMixin {
  bool animate = false;

  double opacity = 0.1;

  buttonOpacity() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      opacity = 1;
    });
  }

  @override
  void initState() {
    buttonOpacity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kLightYellow,
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 250,
                  decoration: const BoxDecoration(
                    color: kDarkYellow,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(210),
                    ),
                  ),
                ),
              ],
            ),
            SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 250,
                          child: Column(
                            children: [
                              // CustomText(widget.gadgetDetail!.name!, fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 16.sp),
                              Text(
                                widget.gadgetDetail!.name!,
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              // CustomText(
                              //   '\$${widget.gadgetDetail!.price}/mo',
                              //   fontSize: 24.sp,
                              //   fontFamily: 'Roboto_Bold',
                              // ),
                              Text(
                                '\$${widget.gadgetDetail!.price}/mo',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Roboto_Bold',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Hero(
                      tag: 'assets/images/${widget.gadgetDetail!.image!}',
                      child: Transform.rotate(
                          angle: 0.3,
                          child: Image.asset(
                            'assets/images/${widget.gadgetDetail!.image!}',
                            height: 270,
                            fit: BoxFit.fill,
                          )),
                    ),
                    AnimatedOpacity(
                      opacity: opacity,
                      duration: const Duration(milliseconds: 700),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(children: [
                                Container(
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: kDarkYellow,
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: const Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.note_add, size: 16, color: kTextColor),
                                        SizedBox(height: 4),
                                        // CustomText('Free delivery', fontWeight: FontWeight.w500, fontSize: 13.sp)
                                        Text(
                                          'Free delivery',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: kDarkYellow,
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: const Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.redo, size: 18, color: kTextColor),
                                        SizedBox(height: 4),
                                        // CustomText('Free returns', fontWeight: FontWeight.w500, fontSize: 13.sp)
                                        Text(
                                          'Free returns',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  // height: 210.h,
                                  padding: const EdgeInsets.all(15),
                                  decoration: const BoxDecoration(
                                    color: Color(0xff94c2a3),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(27),
                                      bottomLeft: Radius.circular(27),
                                      bottomRight: Radius.circular(27),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Column(
                                      children: [
                                        Icon(Icons.star_rounded, color: kTextColor, size: 32),
                                        SizedBox(height: 3),
                                        // CustomText('4.8', fontSize: 16.sp, fontWeight: FontWeight.w700),
                                        Text(
                                          '4.8',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        // CustomText('120 Reviews', fontSize: 11.sp, fontWeight: FontWeight.w500),
                                        Text(
                                          '120 Reviews',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 11,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        // CustomText(
                                        //   'The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy. The Sport Loop is made from a soft and breathable double-...',
                                        //   fontWeight: FontWeight.w500,
                                        // ),
                                        Text(
                                          'The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy. The Sport Loop is made from a soft and breathable double-...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                                child: Column(children: [
                              Container(
                                // height: 200.h,
                                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                                decoration: const BoxDecoration(
                                  color: Color(0xfff6e39e),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(27),
                                    bottomLeft: Radius.circular(27),
                                    bottomRight: Radius.circular(27),
                                  ),
                                ),
                                child: 
                                // CustomText(
                                //   'The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy. The Sport Loop is made from a soft and breathable double-...',
                                //   fontWeight: FontWeight.w500,
                                // ),
                                const Text(
                                  'The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy. The Sport Loop is made from a soft and breathable double-...',
                                  style: TextStyle(color: kTextColor, fontSize: 13, fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                // height: 200.h,
                                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                                decoration: const BoxDecoration(
                                  color: kOrange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(27),
                                    topRight: Radius.circular(27),
                                    bottomRight: Radius.circular(27),
                                  ),
                                ),
                                child: const Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.network_check, size: 15, color: kTextColor),
                                          SizedBox(width: 15),
                                          // CustomText(
                                          //   'cellular \navailable',
                                          //   color: kTextColor,
                                          // ),
                                          Text(
                                            'cellular \navailable',
                                            style: TextStyle(color: kTextColor, fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 14),
                                      Row(
                                        children: [
                                          Icon(Icons.redo, size: 15, color: kTextColor),
                                          SizedBox(width: 15),
                                          // CustomText(
                                          //   'cellular \navailable',
                                          //   color: kTextColor,
                                          // ),
                                          Text(
                                            'cellular \navailable',
                                            style: TextStyle(color: kTextColor,),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 14),
                                      Row(
                                        children: [
                                          Icon(Icons.network_check, size: 15, color: kTextColor),
                                          SizedBox(width: 15),
                                          // CustomText(
                                          //   'cellular \navailable',
                                          //   color: kTextColor,
                                          // ),
                                          Text(
                                            'cellular \navailable',
                                            style: TextStyle(color: kTextColor,),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 14),
                                      Row(
                                        children: [
                                          Icon(Icons.network_check, size: 15, color: kTextColor),
                                          SizedBox(width: 15),
                                          // CustomText(
                                          //   'cellular \navailable',
                                          //   color: kTextColor,
                                          // ),
                                          Text(
                                            'cellular \navailable',
                                            style: TextStyle(color: kTextColor,),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ])),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: MediaQuery.of(context).size.width / 2 - 55,
              right: MediaQuery.of(context).size.width / 2 - 55,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const CartScreen()),
                  // );
                },
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: kDarkYellow,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Center(
                    child: Icon(Icons.shopping_cart_outlined, size: 22, color: kTextColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 40),
              child: CommonButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios, size: 12)),
            ),
          ],
        ),
      ),
    );
  }
}