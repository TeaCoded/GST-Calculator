import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gst_calculator/helper/colors.dart';
import 'package:gst_calculator/providers/gst_controller.dart';
import 'package:gst_calculator/widgets/gst_percentage_button.dart';
import 'package:gst_calculator/widgets/number_button.dart';
import 'package:gst_calculator/widgets/operator_button.dart';
import 'package:provider/provider.dart';


class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GSTController>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Spacer(),
            SizedBox(
              width: 355.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 190.h,
                    child: SingleChildScrollView(
                      reverse: true,
                      child: Text(
                        controller.input,
                    style: Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Created by TeaCoded',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12.h),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? MyColors.lightBlackColor
                    : MyColors.lightWhiteColor,
              ),
              width: 360.w,
              child: const Column(
                children: [
                  Row(
                    children: [
                      GstPercentage(
                        percentage: 3,
                      ),
                      GstPercentage(
                        percentage: 5,
                      ),
                      GstPercentage(
                        percentage: 12,
                      ),
                      GstPercentage(
                        percentage: 18,
                      ),
                      GstPercentage(
                        percentage: 28,
                      ),
                    ],
                  ),
                  Row(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          NumberButton(text: '7'),
                          NumberButton(text: '4'),
                          NumberButton(text: '1'),
                          OperatorButton(text: 'C')
                        ],
                      ),
                      Column(
                        children: [
                          NumberButton(text: '8'),
                          NumberButton(text: '5'),
                          NumberButton(text: '2'),
                          NumberButton(text: '0'),
                        ],
                      ),
                      Column(
                        children: [
                          NumberButton(text: '9'),
                          NumberButton(text: '6'),
                          NumberButton(text: '3'),
                          NumberButton(text: '.'),
                        ],
                      ),
                      Column(
                        children: [
                          OperatorButton(text: '/'),
                          OperatorButton(text: '×'),
                          OperatorButton(text: '+'),
                          OperatorButton(text: '-'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

