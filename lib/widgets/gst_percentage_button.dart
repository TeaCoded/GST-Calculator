import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gst_calculator/pages/result.dart';
import 'package:gst_calculator/providers/gst_controller.dart';
import 'package:provider/provider.dart';

class GstPercentage extends StatelessWidget {
  final int percentage;

  const GstPercentage({
    super.key,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GSTController>(context);
    return Container(
      height: 90.h,
      width: 72.w,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white12
          : Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                if (controller.input.toString().isNotEmpty) {
                  controller.additionGST(percentage);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(
                                text: 'Excl. GST',
                                cGSTsGstPer: '${percentage / 2}',
                                percentage: percentage,
                                roundOff:
                                    controller.totalAmount.round().toDouble() -
                                        controller.totalAmount,
                                netPrice: controller.output.toStringAsFixed(2),
                                cGST: controller.cGST.toStringAsFixed(2),
                                totalGST: controller.totalGSTAmount
                                    .toStringAsFixed(2),
                                totalPrice: controller.totalAmount
                                    .round()
                                    .toStringAsFixed(2),
                              )));
                  Future.delayed(const Duration(milliseconds: 100),
                      controller.resetValues);
                }
              },
              child: Text('+$percentage%',
                  style: Theme.of(context).textTheme.bodySmall)),
          SizedBox(
            height: 15.h,
          ),
          GestureDetector(
              onTap: () {
                if (controller.input.toString().isNotEmpty) {
                  controller.subtractionGST(percentage);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(
                          text: 'Incl. GST',
                          cGSTsGstPer: '${percentage / 2}',
                          percentage: percentage,
                          roundOff: controller.totalAmount.round().toDouble() -
                              controller.totalAmount,
                          netPrice: controller.netPrice.toStringAsFixed(2),
                          cGST: controller.cGST.toStringAsFixed(2),
                          totalGST:
                              controller.totalGSTAmount.toStringAsFixed(2),
                          totalPrice:
                              controller.output.round().toStringAsFixed(2),
                        ),
                      ));
                  Future.delayed(const Duration(milliseconds: 100),
                      controller.resetValues);
                }
              },
              child: Text('-$percentage%',
                  style: Theme.of(context).textTheme.bodySmall)),
        ],
      ),
    );
  }
}
