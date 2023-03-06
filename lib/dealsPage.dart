import 'package:flutter/material.dart';

class DealPages extends StatelessWidget {
  const DealPages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: dealList.map(
        (e) {
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
                e.id.toString(),style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),
              ),
              title: Text(e.title!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 20),),
              subtitle: Text(e.discription!,style: TextStyle(color: Colors.white, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 16),),
              trailing: const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () {},
            ),
          );
        },
      ).toList(),
    );
  }
}

class Deal {
  int? id;
  String? title;
  String? discription;
  Deal({this.id, this.title, this.discription});
}

List<Deal> dealList = [
  Deal(
    id: 1,
    title: 'dfbd',
    discription: 'dfbdbf',
  ),
    Deal(
    id: 2,
    title: 'AA',
    discription: 'a',
  ),
];