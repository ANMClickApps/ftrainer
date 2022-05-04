import 'package:flutter/material.dart';

class RowDodts extends StatelessWidget {
  const RowDodts({
    Key? key,
    required this.currentIndex,
    required this.lists,
  }) : super(key: key);

  final List<String> lists;
  final double currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 10.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: lists.map((e) {
            int elementIndex = lists.indexOf(e);
            return Container(
              margin: const EdgeInsets.only(right: 4.0),
              height: elementIndex == currentIndex ? 10.0 : 8.0,
              width: elementIndex == currentIndex ? 10.0 : 8.0,
              decoration: BoxDecoration(
                  color: elementIndex == currentIndex
                      ? Colors.white
                      : Colors.white24,
                  shape: BoxShape.circle),
            );
          }).toList(),
        ),
      ),
    );
  }
}
