import 'package:flutter/material.dart';
class Lib extends StatelessWidget {
  final icon;
  final text;
  const Lib({Key? key,required this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 20,top: 33),
          child: InkWell(



            onTap: (){},
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("$icon"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 23,top: 33),
          child: Text("$text",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
        )
      ],
    );
  }
}
