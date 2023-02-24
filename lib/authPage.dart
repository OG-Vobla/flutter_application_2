import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/homePage.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final Email = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    Email.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Column(

              mainAxisAlignment: 
                MainAxisAlignment.center,
              children: [ 
                Padding(padding: EdgeInsets.only(top: 70)),
             Image.asset('assets/ClownIcon.png', width: 120, height: 90, fit: BoxFit.cover,),
             Padding(padding: EdgeInsets.only(top: 40)),
            Text(
              "Clown Mobile",
              style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 27),),
              Padding(padding: EdgeInsets.only(top: 25)),
            Container(
                margin: EdgeInsets.fromLTRB(30, 10, 10, 10),
                child: SizedBox(
                width: 250,
                height: 60,
                child:  TextField(
                  controller: Email,
                  cursorColor: Colors.red,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 30.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    
                  ),
                filled: true,
                hintText: "Email",
                fillColor: Color.fromARGB(255, 207, 217, 255),
                hintStyle: TextStyle(color: Color.fromARGB(157, 0, 0, 0), fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 19),
                
                ),
                 ),
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 10, 10),
                child: SizedBox(
                width: 250,
                height: 60,
                child:  TextField(
                  cursorColor: Colors.red,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 30.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                     focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    
                  ),
                filled: true,
                hintText: "Password",
                fillColor: Color.fromARGB(255, 207, 217, 255),
                hintStyle: TextStyle(color: Color.fromARGB(157, 0, 0, 0), fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 19)
                ),
                 ),
              ),
              ),
              Container(child: ElevatedButton(onPressed: () {
              {
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>  HomePage()));
                }
                
                }, child: Text(
                    "Log In", 
                  style: TextStyle(color: Colors.black, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),
                  ),
                  style: ButtonStyle(
                    
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 130, 170, 224)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )
                    )
                  ),
                  ) ,
              height: 30,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              InkWell(
                child: Text(
                    "Sign In?", 
                  style: TextStyle(color: Color.fromARGB(170, 255, 255, 255), fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 14, decoration: TextDecoration.underline),
                  ),
              ),
                  Row(
                children: [
              Container(padding: EdgeInsets.fromLTRB(20,30,0,0),child:  
              Image.asset('assets/Baloons.png', width: 140, height: 140, fit: BoxFit.cover,  color: Colors.white.withOpacity(0.7), colorBlendMode: BlendMode.modulate,
              ),),
              Container(padding: EdgeInsets.fromLTRB(30,0,0,30),child:  
              Image.asset('assets/Baloons.png', width: 140, height: 140, fit: BoxFit.cover,  color: Colors.white.withOpacity(0.4), colorBlendMode: BlendMode.modulate,
              ),),
             
                ],
                  ),
              
              Container(padding: EdgeInsets.fromLTRB(10,10,20,10),child: Image.asset('assets/Baloons.png', width: 120, height: 120, fit: BoxFit.cover,  color: Colors.white.withOpacity(0.8), colorBlendMode: BlendMode.modulate,), ),

              ],
            ),
            
          ],
        ),
      ),

    );
  }
}
