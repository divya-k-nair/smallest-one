import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:small_app/main.dart';

void main()
{
  runApp(App());
}
class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _small=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("CHECK"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_outlined,color: Colors.pink,size: 40,),
                      hintText: "Number 1",
                      labelText: "Number 1",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_outlined,color: Colors.pink,size: 40,),
                      hintText: "Number 2",
                      labelText: "Number 2",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.purpleAccent,
                    onPressed:(){
                      var getNumber1=int.parse(num1.text);
                      var getNumber2=int.parse(num2.text);
                      print(getNumber1);
                      print(getNumber2);
                      setState(() {
                        _small=(getNumber1<getNumber2) ? getNumber1:getNumber2;
                        print(_small);

                      });


                    },

                    child: Text("SMALLEST",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Text(_small.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),


                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.purpleAccent,
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Small()));

                    },
                    child: Text("BACK TO HOME",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),

              ],//children
            ),
          ),
        )


    ),
    );
  }
}
