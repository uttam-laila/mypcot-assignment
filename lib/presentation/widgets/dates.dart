
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
    required this.date,
    required this.day,
    required this.colorDate,
    required this.colorDay,
  });

  final String day;
  final String date;
  final Color colorDay;
  final Color colorDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(
            fontSize: 14.sp,
            color: colorDay,
          ),
        ),
        SizedBox(height: 4.h,),
        Text(
          date,
          style: TextStyle(
              fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorDate),
        ),
      ],
    );
  }
}
