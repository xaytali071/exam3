import 'package:exam3/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class TopLogo2 extends StatelessWidget {
  final textpage;
  const TopLogo2({Key? key,required this.textpage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Text("$textpage",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ),

              Row(
                children: [
                  Image.asset('assets/images/wifi.png'),
                  18.horizontalSpace,
                  Image.asset('assets/images/notifications.png'),
                  18.horizontalSpace,
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchPage1()));
                      },
                      child: Image.asset('assets/images/search.png')),
                  18.horizontalSpace,
                  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Style.darkGrey),
                  )
                ],
              )
            ],
          ),
        ),
        2.verticalSpace,
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 12, right: 12),
          child: Divider(
            thickness: 2,
            color: Style.greyBorder,
          ),
        ),
      ],
    );
  }
}
