import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_assignment/core/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      extendBody: true,
      floatingActionButton: SizedBox(
        height: 67.sp,
        width: 67.sp,
        child: FloatingActionButton(
          backgroundColor: AppColors.black,
          child: Icon(
            Icons.add,
            size: 32.sp,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.h,
              width: MediaQuery.of(context).size.width,
              color: AppColors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //MENU ICON
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withOpacity(0.1),
                          spreadRadius: 7,
                          blurRadius: 11,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 32.h,
                    width: 32.w,
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SvgPicture.asset(
                      'assets/icons/📍 Leading Icon l Use High Emphasis.svg',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24.w),
                    width: 160.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //FAV ICON
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 2.sp, color: AppColors.white),
                            color: AppColors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.1),
                                spreadRadius: 7,
                                blurRadius: 11,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 32.h,
                          width: 32.w,
                          child: SvgPicture.asset(
                            'assets/icons/fav.svg',
                            fit: BoxFit.fill,
                          ),
                        ),

                        //NOTIFICATION ICON
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.black.withOpacity(0.1),
                                    spreadRadius: 7,
                                    blurRadius: 11,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: 32.h,
                              width: 32.w,
                              child: SvgPicture.asset(
                                'assets/icons/📍Trailing icon 1.svg',
                              ),
                            ),

                            //NOTIFICATION NUMBER
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                left: 18.sp,
                                bottom: 20.sp,
                              ),
                              decoration: BoxDecoration(
                                  color: AppColors.red, shape: BoxShape.circle),
                              height: 16.h,
                              width: 15.w,
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          width: 32.sp,
                          height: 32.sp,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 2.sp, color: AppColors.white),
                            color: AppColors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.1),
                                spreadRadius: 7,
                                blurRadius: 11,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:
                              SvgPicture.asset('assets/icons/profile_icon.svg'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //WELCOME MYPCOT !!
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              height: 80.h,
              // color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Welcome, Mypcot',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 20.sp,
                              /*.withOpacity(0.8)*/
                            ),
                          ),
                          Text(
                            ' !!',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 22.sp,
                              /*.withOpacity(0.8)*/
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        'here is your dashboard....',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16.sp,
                          /*.withOpacity(0.8)*/
                        ),
                      ),
                    ],
                  ),

                  //SEACRH ICON
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withOpacity(0.1),
                          spreadRadius: 7,
                          blurRadius: 11,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 52.sp,
                    width: 52.sp,
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),

            //LIST CARDS
            Container(
              height: 225.h,
              margin: EdgeInsets.all(12.sp),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //ORDERS
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            height: 220.h,
                            width: 320.w,
                            decoration: BoxDecoration(
                              color: AppColors.skyBlue,
                              borderRadius: BorderRadius.circular(
                                16.sp,
                              ),
                            ),
                            //ORDERS IMAGE
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 18.w,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Container(
                                      width: 100.sp,
                                      height: 100.sp,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.white,
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/icons/orders-illustration-image.svg',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    //ORDERS BUTTON
                                    Container(
                                      width: 100.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          12.sp,
                                        ),
                                        color: AppColors.darkOrange,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.black
                                                .withOpacity(0.1),
                                            spreadRadius: 2,
                                            blurRadius: 2,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          'Orders',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.018,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      //ORANGE CARD
                      Positioned(
                        top: 0,
                        right: 39.w,
                        child: SizedBox(
                          height: 90.h,
                          child: Stack(
                            children: [
                              Container(
                                height: 69.h,
                                width: 125.w,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.black.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(0, 3),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(
                                    10.sp,
                                  ),
                                  color: AppColors.darkOrange,
                                ),
                                child: Text.rich(
                                  TextSpan(
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: 'You have',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '3',
                                        /* dataList.ordersList[0].ordersActive, */
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' active orders from',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                              //3 IMAGES
                              //image1
                              Positioned(
                                left: 18.w,
                                bottom: 0,
                                child: SizedBox(
                                  width: 125.w,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 40.sp,
                                        width: 40.sp,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2.sp,
                                            color: AppColors.pink,
                                          ),
                                          color: Colors.blue.withOpacity(0.5),
                                          shape: BoxShape.circle,
                                          /*  image: DecorationImage(
                                                                          image: AssetImage(
                                        // dataList.ordersList[0].smallImg1,
                                                                          ),
                                                                        ), */
                                        ),
                                      ),

                                      //image2
                                      Positioned(
                                        left: 26.w,
                                        bottom: 0,
                                        child: Container(
                                          height: 40.sp,
                                          width: 40.sp,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2.sp,
                                              color: AppColors.pink,
                                            ),
                                            color: Colors.blue.withOpacity(0.5),
                                            shape: BoxShape.circle,
                                            /* image: DecorationImage(
                                                                              image: AssetImage(
                                          // dataList.ordersList[0].smallImg2,
                                                                              ),
                                                                            ), */
                                          ),
                                        ),
                                      ),

                                      //image3
                                      Positioned(
                                        left: 52.w,
                                        bottom: 0,
                                        child: Container(
                                          height: 40.sp,
                                          width: 40.sp,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2.sp,
                                              color: AppColors.pink,
                                            ),
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                            /*  image: DecorationImage(
                                                                              image: AssetImage(
                                          dataList.ordersList[0].smallImg3,
                                                                              ),
                                                                            ), */
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      //PENDING ORDERS CARD
                      Positioned(
                        right: 40.w,
                        bottom: 35.h,
                        child: SizedBox(
                          height: 92.h,
                          child: Stack(
                            children: [
                              Container(
                                height: 69.h,
                                width: 105.w,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.black.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(
                                    10.sp,
                                  ),
                                  color: AppColors.white,
                                ),
                                child: Text.rich(
                                  TextSpan(
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: '02',
                                        style: TextStyle(
                                          color: AppColors.textColor,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Pending Orders from',
                                        style: TextStyle(
                                          color: AppColors.textColor,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                              //2 IMAGES
                              //image4
                              Positioned(
                                left: 19.w,
                                bottom: 0,
                                child: SizedBox(
                                  width: 125.w,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 40.sp,
                                        width: 40.sp,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2.sp,
                                            color: AppColors.pink,
                                          ),
                                          color: Colors.blue.withOpacity(0.5),
                                          shape: BoxShape.circle,
                                          /*  image: DecorationImage(
                                                                          image: AssetImage(
                                        // dataList.ordersList[0].smallImg1,
                                                                          ),
                                                                        ), */
                                        ),
                                      ),

                                      //image2
                                      Positioned(
                                        left: 26.w,
                                        bottom: 0,
                                        child: Container(
                                          height: 40.sp,
                                          width: 40.sp,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2.sp,
                                              color: AppColors.pink,
                                            ),
                                            color: Colors.blue.withOpacity(0.5),
                                            shape: BoxShape.circle,
                                            /* image: DecorationImage(
                                                                              image: AssetImage(
                                          // dataList.ordersList[0].smallImg2,
                                                                              ),
                                                                            ), */
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //TODO: here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
