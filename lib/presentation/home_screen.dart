import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_assignment/core/constants.dart';
import 'package:mypcot_assignment/presentation/widgets/bottom_bar.dart';
import 'package:mypcot_assignment/presentation/widgets/dates.dart';
import 'package:mypcot_assignment/presentation/widgets/list_card.dart';

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
          backgroundColor: AppColors.textColor,
          child: Icon(
            Icons.add,
            size: 32.sp,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: [
          Container(
            height: 80.h,
            width: MediaQuery.of(context).size.width,
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        offset: const Offset(0, 3),
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
                              offset: const Offset(0, 3),
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
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            height: 32.h,
                            width: 32.w,
                            child: SvgPicture.asset(
                              'assets/icons/📍Trailing icon 1.svg',
                            ),
                          ),
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
                              offset: const Offset(0, 3),
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
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            height: 80.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome, Mypcot !!',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'here is your dashboard....',
                      style: TextStyle(
                        color: AppColors.textColor.withOpacity(0.5),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.1),
                        spreadRadius: 7,
                        blurRadius: 11,
                        offset: const Offset(0, 3),
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
          Container(
            height: 242.h,
            margin: EdgeInsets.all(12.sp),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return CardItem(index: index);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            height: 60.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'January, 23 2021',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor),
                    ),
                  ],
                ),
                Container(
                  width: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 7,
                        blurRadius: 11,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 30.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'TIMELINE',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.textColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.textColor,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 7,
                        blurRadius: 11,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 30.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20.sp,
                        width: 20.sp,
                        child: SvgPicture.asset(
                          'assets/icons/calender.svg',
                          color: AppColors.textColor.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'JAN, 2021',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 64.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DateWidget(
                  colorDate: AppColors.textColor,
                  colorDay: AppColors.textColor.withOpacity(0.4),
                  date: '20',
                  day: 'MON',
                ),
                DateWidget(
                  colorDate: AppColors.textColor,
                  colorDay: AppColors.textColor.withOpacity(0.4),
                  date: '21',
                  day: 'TUE',
                ),
                DateWidget(
                  colorDate: AppColors.textColor,
                  colorDay: AppColors.textColor.withOpacity(0.4),
                  date: '22',
                  day: 'WED',
                ),
                Column(
                  children: [
                    DateWidget(
                      colorDate: AppColors.darkGreen,
                      colorDay: AppColors.darkGreen,
                      date: '23',
                      day: 'THU',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 6.sp,
                      width: 6.sp,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.darkGreen,
                      ),
                    ),
                  ],
                ),
                DateWidget(
                  colorDate: AppColors.textColor,
                  colorDay: AppColors.textColor.withOpacity(0.4),
                  date: '24',
                  day: 'FRI',
                ),
                DateWidget(
                  colorDate: AppColors.textColor,
                  colorDay: AppColors.textColor.withOpacity(0.4),
                  date: '25',
                  day: 'SAT',
                ),
                DateWidget(
                  colorDate: AppColors.textColor,
                  colorDay: AppColors.textColor.withOpacity(0.4),
                  date: '26',
                  day: 'SUN',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.sp,
              ),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  spreadRadius: 7,
                  blurRadius: 11,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            height: 140.h,
            width: 328.w,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New order created',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        width: 170.w,
                        child: Text(
                          'New Order created with Order No. 1345d423.',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        '09:00 AM',
                        style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      SizedBox(
                        height: 16.sp,
                        width: 16.sp,
                        child: SvgPicture.asset(
                          'assets/icons/arrow_back.svg',
                          color: AppColors.orange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.sp,
                    width: 60.sp,
                    child: SvgPicture.asset(
                      'assets/icons/notes.svg',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 40.h,
          )
        ],
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
