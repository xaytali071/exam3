import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class ShortsVideo extends StatelessWidget {
  const ShortsVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 20),
      child: Column(
        children: [
          SizedBox(
              height: 145,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 90,
                          width: 150,
                          color: Style.darkGrey,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                    ])),

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, bottom: 7),
                                child: Container(
                                  width: 150,
                                  height: 45,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 120,
                                            height: 30,
                                            child: Text(
                                              "DIY Toys | Satisfying And Relaxing | DIY Tiktok ",
                                              style: Style.textStyleNormal(
                                                  size: 12, textColor: Style.blackColor),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            ),
                                          ),
                    Icon(
                          Icons.more_vert,
                          color: Style.blackColor,size: 15,
                        )
                                        ],
                                      ),
                                      // 8.verticalSpace,
                                      Text(
                                        "An Naffe",
                                        style: Style.textStyleNormal(
                                            size: 10, textColor: Style.darkGrey),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      // ),
                                //     ],
                                //   ),
                                // ),
                             // )
                                      )],
                          ),
                        ),
                              )
                      ],
                    );
                  })),
          Divider(thickness: 1,)
        ],
      ),
    );
  }
}
