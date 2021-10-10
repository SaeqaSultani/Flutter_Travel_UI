import 'package:flutter/material.dart';
import 'package:travel_app_ui/src/features/places_details/data/model/class_reasons.dart';

class ReasonsWidget extends StatelessWidget {
  const ReasonsWidget({
    Key? key, required this.reasonsItems,required this.index,
  }) : super(key: key);

  final Reasons reasonsItems;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Icon(reasonsItems.icon,color: Colors.grey,size: 20,),
        const SizedBox(width: 5,),
        Text(
          reasonsItems.text,
          style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xFF6F7174),
          ),
        )],
    );
  }
}
