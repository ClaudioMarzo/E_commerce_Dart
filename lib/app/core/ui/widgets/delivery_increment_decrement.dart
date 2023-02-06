import 'package:app_delivery/app/core/ui/styles/colors_app.dart';
import 'package:app_delivery/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DeliveryIncrementDecrement extends StatelessWidget {
  final int amount;
  final VoidCallback incrementTap;
  final VoidCallback decrementTap;

  const DeliveryIncrementDecrement({
    super.key,
    required this.amount,
    required this.incrementTap,
    required this.decrementTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: decrementTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '-',
                style: context.textStyle.TextMedium
                    .copyWith(fontSize: 22, color: Colors.grey),
              ),
            ),
          ),
          Text(
            amount.toString(),
            style: context.textStyle.TextRegular
                .copyWith(fontSize: 17, color: context.colors?.segundary),
          ),
          InkWell(
            onTap: incrementTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '+',
                style: context.textStyle.TextMedium
                    .copyWith(fontSize: 22, color: context.colors?.segundary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
