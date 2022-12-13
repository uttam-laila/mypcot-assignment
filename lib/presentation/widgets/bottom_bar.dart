import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypcot_assignment/presentation/widgets/bottom_selected.dart';

BottomAppBar bottomBar(){
  return  BottomAppBar(
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                0.sp,
              ),
            ),
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                100.sp,
              ),
            ),
          ),
        ),
        notchMargin: 8.sp,
        child: SizedBox(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const BottomBarIconSelected(
                title: 'Home',
                imgPath: 'assets/icons/home.svg',
              ),
              const BottomBarIconSelected(
                title: 'Customers',
                imgPath: 'assets/icons/users.svg',
              ),
              SizedBox(
                width: 24.w,
              ),
              const BottomBarIconSelected(
                title: 'Khata',
                imgPath: 'assets/icons/katha.svg',
              ),
              const BottomBarIconSelected(
                title: 'Orders',
                imgPath: 'assets/icons/checklist.svg',
              ),
            ],
          ),
        ),
      );
}
