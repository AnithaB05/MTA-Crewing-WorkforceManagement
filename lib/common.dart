import 'package:flutter/cupertino.dart';

Color webtoFlutter(String hexColor) {
  return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
}

enum Sizes { accept, reject }

Set<Sizes> selection = <Sizes>{Sizes.accept};

List<String> nameList = [
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec"
];

void createScrollListDialog(BuildContext context) {
  showCupertinoDialog(
      context: context,
      builder: (BuildContext ctx) {
        return Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 100, bottom: 100),
          color: CupertinoColors.lightBackgroundGray,
          child: ListWheelScrollView(
              itemExtent: 40,
              useMagnifier: true,
              diameterRatio: 1.6,
              children: <Widget>[
                ...nameList.map((String name) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: CupertinoColors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: CupertinoColors.inactiveGray)),
                    padding: const EdgeInsets.all(10),
                    child: Text(name),
                  );
                })
              ]),
        );
      });
}
