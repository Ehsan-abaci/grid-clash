import 'package:flutter/material.dart';

import '../../../config/theme/color_manager.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, c) => Container(
          height: c.maxHeight * .5 > 100 ? 100 : c.maxHeight * .5,
          width: c.maxWidth * .5 > 165 ? 165 : c.maxWidth * .5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: const BorderDirectional(
              start: BorderSide(
                color: Colors.black,
                width: 3,
              ),
              end: BorderSide(
                color: Colors.black,
                width: 3,
              ),
              top: BorderSide(
                color: Colors.black,
                width: 3,
              ),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 10),
              )
            ],
            color: ColorManager.yellow,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w400,
                color: ColorManager.withe,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
