

import 'package:exam3/components/short.dart';
import 'package:exam3/components/toplogo2.dart';
import 'package:exam3/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/top_logo.dart';
class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  TextEditingController searchcont=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopLogo2(textpage: "History"),
              10.verticalSpace,
              Container(
                width: 380,
                height: 50,
                child: TextFormField(
                  controller: searchcont,
                  onChanged: (s){

                  },
                  decoration: InputDecoration(
                    hintText: "Search watch history",
                    filled: true,
                    fillColor: Color(0xffECECEC),
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Color(0xffECECEC), )),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Color(0xffECECEC), )),
                  ),
                ),
              ),
              ShortsV(),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder:(context,index){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                      width: 380,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Colors.grey
                            ),
                            child: Padding(padding: EdgeInsets.only(top: 60,left: 60),
                              child: Container(
                                margin: EdgeInsets.only(left: 30,top: 20,right: 10,bottom: 10),
                                width: 25,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: Style.darkGrey,
                                ),
                                child: Center(
                                  child: Text("1:23"),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Compiltation | Everything Belongs to Allah 33 Mins | omar... ",
                                  style: Style.textStyleNormal(
                                      size: 14, textColor: Style.blackColor),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text("Omar & Hana - Islamic ",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10) ,
                                child: Text("5.5M views",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),),
                              )
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Style.blackColor,size: 15,
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
