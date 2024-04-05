import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gst_calculator/helper/colors.dart';
import 'package:gst_calculator/providers/gst_controller.dart';
import 'package:provider/provider.dart';


class Result extends StatelessWidget {
  final String text;
  final String cGSTsGstPer;
  final int percentage;
  final String netPrice;
  final String cGST;
  final String totalGST;
  final String totalPrice;
  final double roundOff;

  const Result(
      {super.key,
      required this.text,
      required this.cGSTsGstPer,
      required this.percentage,
      required this.netPrice,
      required this.cGST,
      required this.totalGST,
      required this.totalPrice, required this.roundOff});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GSTController>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: IconButton(
            onPressed: () {
              controller.resetValues();
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25.sp,
              color: Theme.of(context).brightness == Brightness.dark
                  ? MyColors.whiteColor
                  : MyColors.blackColor,
            )),automaticallyImplyLeading: false,toolbarHeight: 30.h,elevation: 0,),
        body: SizedBox(
          width: 360.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 28.h,
                  width: 120.w,
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? MyColors.midBlackColor
                          : MyColors.midWhiteColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.titleSmall,
                      ))),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                width: 330.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? MyColors.whiteColor
                            : MyColors.blackColor,
                        width: 2)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 15.h, right: 6.w, left: 6.w),
                      child: Row(
                        children: [
                          Text(
                            'Net Price',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          SizedBox(width: 210.w,
                            child: Text(netPrice,
                              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.h, right: 6.w, left: 6.w),
                      child: Row(
                        children: [
                          Text(
                            'CGST(${cGSTsGstPer.endsWith('.0') ? cGSTsGstPer.substring(0, cGSTsGstPer.length - 2) : cGSTsGstPer}%)',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          SizedBox(width: 210.w,
                            child: Text(cGST,
                              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.h, right: 6.w, left: 6.w),
                      child: Row(
                        children: [
                          Text(
                            'SGST(${cGSTsGstPer.endsWith('.0') ? cGSTsGstPer.substring(0, cGSTsGstPer.length - 2) : cGSTsGstPer}%)',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          SizedBox(width: 210.w,
                            child: Text(cGST,
                              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.h, bottom: 10.h, right: 6.w, left: 6.w),
                      child: Row(
                        children: [
                          Text(
                            'IGST($percentage%)',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          SizedBox(width: 210.w,
                            child: Text(totalGST,
                              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        height: 1.h,
                        width: 320.w,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? MyColors.whiteColor
                            : MyColors.blackColor),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.h, right: 6.w, left: 6.w),
                      child: Row(
                        children: [
                          Text(
                            'Total GST',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          SizedBox(width: 210.w,
                            child: Text(totalGST,
                              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.h, right: 6.w, left: 6.w),
                      child: Row(
                        children: [
                          Text(
                            'Round off',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          SizedBox(width: 210.w,
                            child: Text(roundOff.toStringAsFixed(2),
                              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.h, bottom: 15.h, right: 6.w, left: 6.w),
                      child: Row(
                        children: [
                          Text(
                            'Total Price',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const Spacer(),
                          SizedBox(width: 210.w,
                            child: Text(totalPrice,
                              style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
