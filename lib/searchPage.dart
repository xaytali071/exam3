import 'package:flutter/material.dart';

import 'components/TextIcon.dart';
class SearchPage1 extends StatefulWidget {
  const SearchPage1({Key? key}) : super(key: key);

  @override
  State<SearchPage1> createState() => _SearchPage1State();
}

class _SearchPage1State extends State<SearchPage1> {
  TextEditingController searchcont=TextEditingController();
  List listOfSearch=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                  Container(
                    width: 300,
                    height: 40,
                    child: TextFormField(
                      controller: searchcont,
                    onChanged: (s){

                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffECECEC),
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Color(0xffECECEC), )),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Color(0xffECECEC), )),
                    ),
                    ),
                  ),
                  IconButton(onPressed: (){
                    listOfSearch.add(searchcont.text);
                    setState(() {});
                  }, icon: Icon(Icons.mic)),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: listOfSearch.length,
                  itemBuilder:(context,index){
                    return InkWell(
                    onTap: (){},
                        onLongPress: (){
    showDialog(context: context, builder: (context){
    return Dialog(
      child: Container(
        height: 100,
        width: 200,
        child: Column(
          children: [
            Row(
              children: [
                TextButton(onPressed: (){
                }, child: Text("Cancel",style: TextStyle(color: Colors.blue),)),
                TextButton(onPressed: (){
                  listOfSearch.removeAt(index);
                  Navigator.pop(context);
                  setState(() {});
                }, child: Text("Remove",style: TextStyle(color: Colors.blue),)),

              ],
            )
          ],
        ),
      ),
    );});
                   // Navigator.push(context, MaterialPageRoute(builder: (_)=>ShowDiolog()));
                        },
                    child:
                      Row(
                      children:[
                        Padding(
                      padding: EdgeInsets.only(left: 23,top: 33),
                      child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage("assets/hist.png"),
                      fit: BoxFit.cover,
                      )
                      ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(left: 23,top: 33),
                    child: Text("${listOfSearch[index]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                    ),
                        Spacer(flex: 1,),
                        Padding(
                          padding: EdgeInsets.only(left: 10,top: 33),
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                                image: DecorationImage(
                                  image: AssetImage(""),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        ),
                            InkWell(
                              onTap: (){},
                          child: Padding(
                            padding: EdgeInsets.only(left: 10,top: 33,right: 16),
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/arrow2.jpg"),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ),
                        ),
                    ]
                    )
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
