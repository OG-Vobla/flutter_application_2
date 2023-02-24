import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/homePage.dart';

import 'package:flutter/material.dart';

class  HomePage extends StatefulWidget{
  @override
  StateHomePage  createState() => StateHomePage();
}

class StateHomePage extends State<HomePage>{
    int selectedIndex = 0;
    List<Widget> widgets = <Widget>[
 Home(),
  Clown(),  
  Profile(),];
  void onItemTap(int index){
setState(() {
  selectedIndex = index;
});
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
          iconTheme: IconThemeData(
    color: Colors.black, //change your color here
  ),
        backgroundColor: Color.fromARGB(255, 207, 217, 255),
      ),
      body: Center(
        child: widgets.elementAt(selectedIndex),
      ),
      bottomNavigationBar:ClipRRect(
        
          borderRadius: BorderRadius.all(Radius.circular(20)),
        
        child: SizedBox(height: 57, child: BottomNavigationBar(
          
        onTap:
          onItemTap
        , 
        backgroundColor: Color.fromARGB(255, 207, 217, 255),
        selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 207, 217, 255), fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 14),
        unselectedLabelStyle: TextStyle(color:Color.fromARGB(255, 207, 217, 255), fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home_outlined, color:  Color.fromARGB(255, 0, 0, 0),),
            label: '',
            
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
               AssetImage("assets/ClounIconOutline.png", ),
               ),
            label: '',
            
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity, color:  Color.fromARGB(255, 0, 0, 0),),
            label: '',
            
          ),
          
        ],

      ),))
      
    );
    
  }
  
  }
  
   class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Home", style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16)));
  }
}

class Clown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Clown", style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16)));
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile", style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16)));
  }
}