
import 'package:flutter/material.dart';
import 'package:flutter_application_2/dealsPage.dart';

class FakeDealPagesSecond extends StatelessWidget {
  const FakeDealPagesSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
 SizedBox(height: 100, child: ListView(
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
              trailing: const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () {},
            ) , height: 50, width: 81,) 
          );
          },
        ).toList(),
      )),
 SizedBox(height: 100, child: ListView(
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
              trailing: const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () {},
            ) , height: 50, width: 81,) 
          );
          },
        ).toList(),
      )),
       SizedBox(height: 100, child: ListView(
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
              trailing: const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () {},
            ) , height: 50, width: 81,) 
          );
          },
        ).toList(),
      )),
       SizedBox(height: 100, child: ListView(
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
              trailing: const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () {},
            ) , height: 50, width: 81,) 
          );
          },
        ).toList(),
      )),
 ],
           
    
    );
  }
}
