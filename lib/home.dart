import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:small_app/small.dart';

void main()
{
  runApp(Home());
}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child:Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));


              },
                child: Text("SMALLEST",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),

            ),

            ),
            ),
            ], //children
          ),
         ),




    );
  }
}
