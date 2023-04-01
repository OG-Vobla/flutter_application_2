import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/calendarPage.dart';
import 'package:flutter_application_2/dealsPage.dart';
import 'package:flutter_application_2/editDealPage.dart';
import 'package:flutter_application_2/fakeDelyxePageSecond.dart';
import 'package:flutter_application_2/homePage.dart';
import 'package:flutter_application_2/fakeDelyxePage.dart';
import 'package:flutter_application_2/drawer.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => StateHomePage();
}

class StateHomePage extends State<HomePage>{
    int selectedIndex = 0;
    String searchText = "";
    List<Widget> widgets = <Widget>[ 
 // DealPages(),  
   CalendarPage(),];
   
  
  void onItemTap(int index){
setState(() {
  selectedIndex = index;

});
 

  // List<User> users = List.from(DBConnection().listUserMap());
  // Future users = DBConnection().list();
  // int index = 0;
  // final listPages = [
  //   const DealPages(),
  //   const CalendarPage(),
  // ];



  }
  onItemSearch(String value) {
    setState(
      () {
        searchText = value;

        // return newDealList
        //     .where(
        //       (element) => element.title!.contains(value),
        //     )
        //     .toList();
      },
    );
  }
    TextEditingController searchController = TextEditingController();
      final title = [
      "Список дел",
      //const DealPages(), // 0
      "Календарь", // 1
      "Фейк"
    ];
  bool tittleAppBar = false;
  @override
  Widget build(BuildContext context) {
    Widget listSearchWidget(BuildContext context) {
return StreamBuilder(
  stream: FirebaseFirestore.instance.collection('deals').snapshots(),
  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
    if(!snapshot.hasData){
      return Text('Нет записей');
    }
    else{
      return ListView.builder(
        itemCount: snapshot.data?.docs.length,
        itemBuilder: (BuildContext context, int index){
          String newStr = snapshot.data?.docs[index].get('title');
          if(tittleAppBar){
            if(newStr.contains(searchText) ){
            return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              tileColor: Colors.grey,
              title: Text(snapshot.data?.docs[index].get('title')!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 20),),
              subtitle: Text(snapshot.data?.docs[index].get('discription')!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),),
              trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {
                FirebaseFirestore.instance.collection('deals').doc(snapshot.data?.docs[index].id).delete();
                    setState(() {
                    newDealList= dealList;
                  searchController.clear();
                    tittleAppBar = false;
                  });
                },
              ),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
   builder: (context) => new EditDealPages())
 ).then((value) {
   setState(() {
    if(activeDeal.title == "" && activeDeal.discription == ""){
      FirebaseFirestore.instance.collection('deals').doc(snapshot.data?.docs[index].id).delete();
    }
     FirebaseFirestore.instance.collection('deals').doc(snapshot.data?.docs[index].id).set({'title' : activeDeal.title,  'discription' : activeDeal.discription, });
   });
 });
 activeDeal = new Deal(title:  snapshot.data?.docs[index].get('title'),discription: snapshot.data?.docs[index].get('discription'));
              },
            ),
          );
          }
          }
          else{
            return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              tileColor: Colors.grey,
              title: Text(snapshot.data?.docs[index].get('title')!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 20),),
              subtitle: Text(snapshot.data?.docs[index].get('discription')!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),),
              trailing: IconButton(
              icon: Icon(
                Icons.delete_outlined,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                FirebaseFirestore.instance.collection('deals').doc(snapshot.data?.docs[index].id).delete();
                    setState(() {
                    newDealList= dealList;
                  searchController.clear();
                    tittleAppBar = false;
                  });
                },
              ),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
   builder: (context) => new EditDealPages())
 ).then((value) {
   setState(() {
    if(activeDeal.title == "" && activeDeal.discription == ""){
      FirebaseFirestore.instance.collection('deals').doc(snapshot.data?.docs[index].id).delete();
    }
     FirebaseFirestore.instance.collection('deals').doc(snapshot.data?.docs[index].id).set({'title' : activeDeal.title,  'discription' : activeDeal.discription, });
   });
 });
 activeDeal = new Deal(title:  snapshot.data?.docs[index].get('title'),discription: snapshot.data?.docs[index].get('discription'));
              },
            ),
          );
          }
          return Card();       
        },
        );
    }
  },
);
//             return ListView(
//       children: newDealList.map(
//         (e) {
//           return Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: ListTile(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               tileColor: Color.fromARGB(255, 0, 0, 0),
//               title: Text(e.title!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 20),),
//               subtitle: Text(e.discription!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),),
//               trailing: IconButton(
//               icon: Icon(
//                 Icons.delete_outlined,
//                 color: Color.fromARGB(255, 255, 255, 255),
//               ),
//               onPressed: () {
//                     dealList.remove(e);
//                     setState(() {
//                     newDealList= dealList;
//                   searchController.clear();
//                     tittleAppBar = false;
//                   });
//                 },
//               ),
//               onTap: () {
//                 Navigator.push(context, new MaterialPageRoute(
//    builder: (context) => new EditDealPages())
//  ).then((value) {
//    setState(() {
//     if(activeDeal.title == "" && activeDeal.discription == ""){
//       dealList.removeLast();
//     }
//      newDealList = dealList;
//    });
//  });
//  activeDeal = e;
 
//               },
//             ),
//           );
//         },
//       ).toList(),
//     );
    }

    final list = [
      listSearchWidget(context),
      //const DealPages(), // 0
      const CalendarPage(), // 1
      const FakeDealPagesSecond(),
    ];
    AppBar appBarSearch = AppBar(
                      automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
    color:Colors.red, //change your color here
  ),
        backgroundColor: Colors.orange
        
        ,
      
      centerTitle: true,
      title: TextField(
        style:  TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 22),
        cursorColor: Colors.white,
        
        decoration: const InputDecoration(
          hintStyle: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 14),
          hintText: "Название",
        ),
        controller: searchController,
        onChanged: onItemSearch,
      ),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                  searchController.clear();
                  tittleAppBar = false;
                  newDealList = dealList;
                
                
              });
            },
            icon: const Icon(Icons.close))
      ],
    );
    AppBar appBar = AppBar(
                automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
    color:Colors.red, //change your color here
  ),
        backgroundColor: Colors.orange,
      
      title: Text(title[selectedIndex]),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                tittleAppBar = true;
              });
            },
            icon: const Icon(Icons.search))
      ],
    );
     AppBar deffaultAppBar = AppBar(
                automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
    color:Colors.white, //change your color here
  ),
        backgroundColor: Colors.orange,
      
      title: Text(title[selectedIndex]),
      centerTitle: true,
    );
    return Scaffold(
      floatingActionButton:
      selectedIndex == 0 ?
       FloatingActionButton(
        onPressed: () {
        activeDeal = new Deal(title: "", discription: "");
                        Navigator.push(context, new MaterialPageRoute(
   builder: (context) => new EditDealPages())).then((value) {
   setState(() {
    if(activeDeal.title == "" && activeDeal.discription == ""){

    }
    else{
      FirebaseFirestore.instance.collection('deals').add({'title' : activeDeal.title,  'discription' : activeDeal.discription, } );
    }
   });
   });
   setState(() {
    newDealList = dealList;
   });
         } ,
      child: Icon(Icons.add, color: Colors.black,), backgroundColor: Colors.lightGreen,): null,
      
      drawer:const MenuDrawer(),
      backgroundColor: Colors.greenAccent,
  //     appBar: AppBar(

  //       actions: [
  //         IconButton(
  //           onPressed: () {
  //             Navigator.popAndPushNamed(context, '/');
  //           },
  //           icon: const Icon(Icons.exit_to_app),
  //         ),
  //       ],
    //       automaticallyImplyLeading: true,
  //         iconTheme: IconThemeData(
  //   color:Colors.white, //change your color here
  // ),
  //       backgroundColor: Colors.black,
  //     ),
  appBar: selectedIndex == 0 ? (tittleAppBar ? appBarSearch : appBar) : deffaultAppBar ,
      body: Center(
        child: list.elementAt(selectedIndex),
      ),
      bottomNavigationBar:  ClipRRect(
        
          borderRadius: BorderRadius.all(Radius.circular(20)),
        
        child: BackdropFilter(
	  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
	  child: SizedBox(height: 57, child: BottomNavigationBar(
          
        onTap:
          onItemTap
        , 
        backgroundColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 207, 217, 255), fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 14),
        unselectedLabelStyle: TextStyle(color:Color.fromARGB(255, 207, 217, 255), fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 14),
        showUnselectedLabels: true, 
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home_outlined, color:  Colors.white,),
            label: '',
            
          ),
            
                    BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined, color:  Colors.white,),
            label: '',
            
          ),
             
                    BottomNavigationBarItem(
            icon: Icon(Icons.factory_rounded, color:  Colors.white,),
            label: '',
            
          ),
        ],

      ),)))
      
    );
    
  }
  
  }
  

    Deal activeDeal = new Deal();
    List<Deal> newDealList = List.from(dealList);