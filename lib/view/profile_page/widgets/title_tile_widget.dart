import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';

class TitileTile extends StatelessWidget {
  const TitileTile(
      {super.key,
      required this.title,
      this.subtile,
      this.actions,
      this.fontsize = 20.0});
  final String title;
  final Widget? subtile;
  final List<Widget>? actions;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: myfont(size: fontsize, weight: FontWeight.w600),
              ),
              Spacer(),
              SizedBox(
                child: actions != null
                    ? Row(
                        children: actions!,
                      )
                    : null,
              )
            ],
          ),
          subtile != null ? subtile! : SizedBox(),
        ],
      ),
    );
  }
}
