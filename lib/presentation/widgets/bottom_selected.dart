import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_assignment/core/constants.dart';

class BottomBarIconSelected extends StatelessWidget {
  const BottomBarIconSelected({
    super.key,
    required this.imgPath,
    required this.title,
  });

  final String imgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 24.sp,
          width: 24.sp,
          child: SvgPicture.asset(imgPath),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColors.textColor,
            fontSize:12.sp,
          ),
        ),
      ],
    );
  }
}
