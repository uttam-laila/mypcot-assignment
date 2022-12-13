import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mypcot_assignment/core/constants.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Stack(
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
                  color: index == 0
                      ? AppColors.skyBlue
                      : index == 1
                          ? AppColors.yellow
                          : AppColors.lightGreen,
                  borderRadius: BorderRadius.circular(
                    16.sp,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 18.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            index == 0
                                ? 'assets/icons/orders-illustration-image.svg'
                                : index == 1
                                    ? 'assets/icons/subscriptions-illustration-image.svg'
                                    : 'assets/icons/customers-illustration-image.svg',
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Container(
                          width: index == 0
                              ? 100.w
                              : index == 1
                                  ? 110.w
                                  : 120.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              12.sp,
                            ),
                            color: index == 0
                                ? AppColors.darkOrange
                                : index == 1
                                    ? AppColors.blue
                                    : AppColors.pink,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              index == 0
                                  ? 'Orders'
                                  : index == 1
                                      ? 'Subscriptions'
                                      : 'View Customers ',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 14.sp,
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
          if (index == 0 || index == 1)
            Positioned(
              right: index == 1 ? 43.w : 40.w,
              bottom: index == 1 ? 60.h : 35.h,
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
                            offset: const Offset(0, 3),
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
                            if (index == 1)
                              WidgetSpan(
                                child: SizedBox(
                                  height: 30.h,
                                ),
                              ),
                            TextSpan(
                              text: index == 1 ? '10' : '02',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 18.sp,
                              ),
                            ),
                            TextSpan(
                              text: index == 1 ? ' Active ' : ' Pending ',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 12.sp,
                              ),
                            ),
                            TextSpan(
                              text: index == 1
                                  ? '  subscription'
                                  : '  Orders from',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if (index == 0)
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
                                  color: AppColors.red,
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://randomuser.me/api/portraits/women/12.jpg'),
                                  ),
                                ),
                              ),
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
                                    color: AppColors.red,
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://randomuser.me/api/portraits/men/12.jpg'),
                                    ),
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
          if (index == 2)
            Positioned(
              right: 40.w,
              bottom: 50.h,
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
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          10.sp,
                        ),
                        color: AppColors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                '1.8%',
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 30,
                        right: 0,
                        child: SvgPicture.asset('assets/icons/graph.svg'))
                  ],
                ),
              ),
            ),
          if (index == 2 || index == 1)
            Positioned(
              bottom: index == 1 ? 18.h : 12.h,
              right: index == 1 ? 21.w : 57.w,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    12.sp,
                  ),
                  color: AppColors.white,
                ),
                height: 60.h,
                width: 95.w,
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: index == 1 ? '199' : '10',
                          /* dataList.ordersList[0].ordersActive, */
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                        TextSpan(
                          text: index == 1 ? ' Pending' : ' active',
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        TextSpan(
                          text: index == 1 ? ' Deliveries' : ' customers',
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          if (index == 2)
            Positioned(
              bottom: 29.h,
              right: 10.w,
              child: SizedBox(
                width: 65.w,
                child: Stack(
                  children: [
                    Container(
                      height: 25.sp,
                      width: 25.sp,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.sp,
                          color: AppColors.skyBlue,
                        ),
                        color: AppColors.skyBlue,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://randomuser.me/api/portraits/women/72.jpg',
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 12.h, left: 12.h),
                        child: Icon(
                          Icons.circle,
                          color: AppColors.lightGreen,
                          size: 10.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.w,
                      child: Container(
                        height: 25.sp,
                        width: 25.sp,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.sp,
                            color: AppColors.skyBlue,
                          ),
                          color: AppColors.skyBlue,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://randomuser.me/api/portraits/men/72.jpg',
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.h, left: 12.h),
                          child: Icon(
                            Icons.circle,
                            color: AppColors.lightGreen,
                            size: 10.sp,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40.w,
                      child: Container(
                        height: 25.sp,
                        width: 25.sp,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.sp,
                            color: AppColors.skyBlue,
                          ),
                          color: AppColors.skyBlue,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://randomuser.me/api/portraits/women/45.jpg',
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.h, left: 12.h),
                          child: Icon(
                            Icons.circle,
                            color: AppColors.lightGreen,
                            size: 10.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                      color: index == 0
                          ? AppColors.darkOrange
                          : index == 1
                              ? AppColors.blue
                              : AppColors.pink,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Text.rich(
                        TextSpan(
                          children: index == 0
                              ? <InlineSpan>[
                                  TextSpan(
                                    text: 'You have',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 3',
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
                                ]
                              : index == 1
                                  ? [
                                      TextSpan(
                                        text: '03',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' deliveries pending for',
                                        /* dataList.ordersList[0].ordersActive, */
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ]
                                  : [
                                      TextSpan(
                                        text: '15',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' New customers',
                                        /* dataList.ordersList[0].ordersActive, */
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
                  ),
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
                                color: index == 0
                                    ? AppColors.pink
                                    : index == 1
                                        ? AppColors.blue
                                        : AppColors.skyBlue,
                              ),
                              color: index == 0
                                  ? AppColors.pink
                                  : index == 1
                                      ? AppColors.blue
                                      : AppColors.skyBlue,
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://xsgames.co/randomusers/avatar.php?g=male',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 26.w,
                            bottom: 0,
                            child: Container(
                              height: 40.sp,
                              width: 40.sp,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2.sp,
                                  color: index == 0
                                      ? AppColors.pink
                                      : index == 1
                                          ? AppColors.blue
                                          : AppColors.skyBlue,
                                ),
                                color: index == 0
                                    ? AppColors.pink
                                    : index == 1
                                        ? AppColors.blue
                                        : AppColors.skyBlue,
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://xsgames.co/randomusers/avatar.php?g=pixel',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 52.w,
                            bottom: 0,
                            child: Container(
                              height: 40.sp,
                              width: 40.sp,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2.sp,
                                  color: index == 0
                                      ? AppColors.pink
                                      : index == 1
                                          ? AppColors.blue
                                          : AppColors.skyBlue,
                                ),
                                color: index == 0
                                    ? AppColors.pink
                                    : index == 1
                                        ? AppColors.blue
                                        : AppColors.skyBlue,
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://xsgames.co/randomusers/avatar.php?g=female',
                                  ),
                                ),
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
    );
  }
}
