import 'package:ecommerce_app/consts/colors.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/screens/detail_screen.dart';
import 'package:ecommerce_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/common_button.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  bool animate = false;
  bool visible = false;
  bool doctorName = false;
  bool tapAppointment = false;
  bool getAppointment = false;

  double opacityFirst = 0.1;
  double opacity = 0.1;
  double doctorWidth = 0;
  double doctorHeight = 0;
  double calenderWidth = 0;
  double appointmentW = 0;
  double appointmentH = 0;
  double medicineTimeW = 0;
  double height = 0;
  double listViewHeight = 0;
  double testH = 0;
  double medicineImageW = 0;
  double medicineImageH = 0;

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      animate = true;
      opacity = 1;
      height = 150;
      opacityFirst = 1;
      listViewHeight = 150;
      testH = 73;
    });
  }

  Future doctorProfileAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      doctorName = true;
      doctorWidth = 70;
      doctorHeight = 70;
      calenderWidth = 300;
      medicineTimeW = 115;
      medicineImageW = 45;
      medicineImageH = 45;
    });
  }

  List companyName = ['All', 'Apple', 'Samsung', 'HuaWei', 'Google'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kLightYellow,
        // appBar: AppBar(
        //   title: const Text('DashBoard Screen',
        //       style: TextStyle(color: Color.fromARGB(255, 149, 31, 31))),
        // ),
        appBar: AppBar(
          flexibleSpace: const AppBarNav(),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                // AnimatedPositioned(
                // top: animate ? 70 : 80,
                // duration: const Duration(milliseconds: 600),
                // child:
                Container(
                  width: double.infinity,
                  // padding: EdgeInsets.only(left: 15, right: 15),
                  height: 200,
                  margin: const EdgeInsets.only(right: 15, left: 15, top: 25),
                  child: SvgPicture.asset(
                    'assets/svgs/home_banner.svg',
                    width: 310,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),

                AnimatedPositioned(
                  top: animate ? 60 : 130,
                  // right: animate ? 15  : -315 ,
                  duration: const Duration(milliseconds: 800),
                  child: AnimatedOpacity(
                    opacity: opacity,
                    curve: Curves.easeIn,
                    duration: const Duration(milliseconds: 700),
                    child: Container(
                      width: 425,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 35,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // CustomText('50% Off', fontSize: 40 , fontFamily: 'Roboto_Medium', fontWeight: FontWeight 900),
                              const Text(
                                '50% Off',
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w900),
                              ),
                              // CustomText('unbelievable visual & \nperformance', fontSize: 13 , fontFamily: 'Roboto', fontWeight: FontWeight 500),
                              const Text(
                                'Unbelievable visual & \nperformance',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              Container(
                                height: 50,
                                width: 90,
                                margin: const EdgeInsets.only(left: 85),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: kTextColor, width: 1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 30),
                          Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              child: Image.asset(
                                'assets/images/headphone.png',
                                height: 140,
                                width: 120,
                                fit: BoxFit.fill,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),

                
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //3rd
            AnimatedPositioned(
              top: animate ? 230 : 260,
              left: 20,
              // right: animate ? 15  : -315 ,
              duration: const Duration(milliseconds: 600),
              child: AnimatedOpacity(
                opacity: opacity,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 700),
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                      itemCount: companyName.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: CommonButton(
                              height: 35,
                              width: 45,
                              child:
                                  // CustomText(companyName[index], fontWeight: FontWeight 600, color: kWhiteColor, fontSize: 13),
                                  Text(
                                companyName[index],
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: kWhiteColor),
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.only(top: 6, right: 18),
                            child:
                                // CustomText(
                                //   companyName[index],
                                //   fontSize: 13,
                                //   fontWeight: FontWeight 600,
                                // ),
                                Text(
                              companyName[index],
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          );
                        }
                      }),
                ),
              ),
            ),

            //4th
            AnimatedPositioned(
              top: animate ? 280 : 420,
              duration: const Duration(milliseconds: 600),
              child: AnimatedOpacity(
                opacity: opacity,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 700),
                child: SizedBox(
                  height: 160,
                  width: 360,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          for (int index = 0;
                              index < gadgetList.length;
                              index++)
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen(
                                            gadgetDetail: gadgetList[index],
                                          )),
                                );
                              },
                              child: Container(
                                height: 160,
                                width: 145,
                                margin: EdgeInsets.only(
                                    right: 10, left: index == 0 ? 15 : 0),
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  color: gadgetList[index].color,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        index % 2 == 0 ? 0 : 22),
                                    topRight: const Radius.circular(22),
                                    bottomLeft: const Radius.circular(22),
                                    bottomRight: Radius.circular(
                                        index % 2 != 0 ? 0 : 22),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Hero(
                                      tag:
                                          'assets/images/${gadgetList[index].image}',
                                      child: Image.asset(
                                        'assets/images/${gadgetList[index].image}',
                                        height: 85,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        // CustomText(gadgetList[index].name!, fontWeight: FontWeight 400, fontSize: 10),
                                        Text(gadgetList[index].name!,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400)),
                                        const Spacer(),
                                        const Row(
                                          children: [
                                            Icon(Icons.star_rounded,
                                                size: 15, color: kTextColor),
                                            // CustomText(' 4.8', fontWeight: FontWeight 500, fontSize: 11)
                                            Text(' 4.8',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        // CustomText('\$${gadgetList[index].price}', fontWeight: FontWeight 600, fontSize: 12),
                                        Text('\$${gadgetList[index].price}',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600)),
                                        const Spacer(),
                                        const Row(
                                          children: [
                                            Icon(Icons.favorite,
                                                size: 14, color: kTextColor),
                                            // CustomText(' 86%', fontWeight: FontWeight 500, fontSize: 11 )
                                            Text(' 86%',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ],
                      ),
                      ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedPositioned(
              top: animate ? 460 : 480,
              left: 10,
              duration: const Duration(milliseconds: 600),
              child: AnimatedOpacity(
                  opacity: opacity,
                  curve: Curves.easeIn,
                  duration: const Duration(milliseconds: 500),
                  child: 
                  // CustomText('Recommended', fontWeight: FontWeight 700, fontSize: 18 ),
                  const Text('Recommended',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700,),)),
                  ),



              AnimatedPositioned(
                top: animate ? 500  : 650 ,
                duration: const Duration(milliseconds: 600),
                child: AnimatedOpacity(
                  opacity: opacity,
                  curve: Curves.easeIn,
                  duration: const Duration(milliseconds: 600),
                  child: SizedBox(
                    height: 160 ,
                    width: 360 ,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          for (int i = 0; i < gadgetList.length; i++)
                            Container(
                              height: 160 ,
                              width: 300 ,
                              margin: EdgeInsets.only(right: 10 , left: i == 0 ? 15  : 0),
                              padding: const EdgeInsets.all(14 ),
                              decoration: BoxDecoration(
                                color: gadgetColor[i]['color'],
                                borderRadius: BorderRadius.circular(22 ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 140 ,
                                    width: 120 ,
                                    decoration: BoxDecoration(
                                      color: gadgetColor[i]['imageColor'],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                      'assets/images/${gadgetList[i].image}',
                                      height: 85 ,
                                    ),
                                  ),
                                  const SizedBox(width: 10 ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5 ),
                                      // CustomText(gadgetList[i].name!, fontFamily: 'Roboto_Medium', fontWeight: FontWeight 500, fontSize: 13 ),
                                      Text(gadgetList[i].name!,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight:
                                                  FontWeight.w500)),
                                      const SizedBox(height: 5 ),
                                      // CustomText("\$16.62/mo", fontFamily: 'Roboto_Bold', fontWeight: FontWeight700, fontSize: 19 ),
                                      const Text("\$16.62/mo",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight:
                                                  FontWeight.w700)),
                                      const SizedBox(height: 8 ),
                                      const Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.star_rounded, size: 15 , color: kTextColor),
                                              // CustomText(' 4.8', fontWeight: FontWeight 500, fontSize: 11 )
                                              Text(' 4.8',
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          SizedBox(width: 10 ),
                                          Row(
                                            children: [
                                              Icon(Icons.favorite, size: 14 , color: kTextColor),
                                              // CustomText(' 86%', fontWeight: FontWeight 500, fontSize: 11 )
                                              Text(' 86%',
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8 ),
                                      const Row(
                                        children: [
                                          Icon(Icons.note_add, size: 15 , color: kTextColor),
                                          // CustomText(' Free delivery', fontWeight: FontWeight 500, fontSize: 12 )
                                          Text(' Free delivery',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight:
                                                      FontWeight.w500)),
                                        ],
                                      ),
                                      const SizedBox(height: 3 ),
                                      const Row(
                                        children: [
                                          Icon(Icons.redo, size: 15 , color: kTextColor),
                                          // CustomText(' Free returns', fontWeight: FontWeight 500, fontSize: 12 )
                                          Text(' Free returns',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight:
                                                      FontWeight.w500)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // SizedBox(height: 5 ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ))     
            
          ],
        ),
      ),
    );
  }
}
