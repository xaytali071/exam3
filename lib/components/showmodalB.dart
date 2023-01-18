import 'package:flutter/material.dart';
class ShowDiolog extends StatefulWidget {
  const ShowDiolog({Key? key}) : super(key: key);

  @override
  State<ShowDiolog> createState() => _ShowDiologState();
}

class _ShowDiologState extends State<ShowDiolog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(

        child: Container(
          height: 100,
          width: 200,
        child: Column(
          children: [
            Row(
              children: [
                TextButton(onPressed: (){}, child: Text("Remove",style: TextStyle(color: Colors.blue),)),
                TextButton(onPressed: (){
                }, child: Text("Remove",style: TextStyle(color: Colors.blue),))
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
