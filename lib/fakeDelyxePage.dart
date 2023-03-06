
import 'package:flutter/material.dart';
import 'package:flutter_application_2/dealsPage.dart';

class FakeDealPages extends StatelessWidget {
  const FakeDealPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(177, 207, 217, 255),
      body:Column(
        children: <Widget>[
 SizedBox(height: 60, child: ListView(
  scrollDirection: Axis.horizontal,
        children: dealList.map(
          (deal) {
           return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child:
            SizedBox(child:ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              tileColor: Color.fromARGB(255, 0, 0, 0),
              leading: Text( 
                deal.id.toString(),style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),
              ),
              title: Text(deal.title!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 20),),
              trailing: const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () {},
            ) , height: 10, width: 200,) 
          );
          },
        ).toList(),
      )),
 SizedBox(height: 599, child: ListView(
        children: dealList.map(
          (deal) {
           return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              tileColor: Color.fromARGB(255, 0, 0, 0),
              leading: Text( 
                deal.id.toString(),style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),
              ),
              title: Text(deal.title!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 20),),
              subtitle: Text(deal.discription!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),),
              trailing: const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () {},
            ),
          );
          },
        ).toList(),
      )),
 ],
           
      )
    );
  }
}
