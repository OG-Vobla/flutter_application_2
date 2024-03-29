import 'package:flutter/material.dart';
import 'package:flutter_application_2/dealsPage.dart';
import 'homePage.dart';

class EditDealPages extends StatefulWidget {
  const EditDealPages({super.key});

  @override
  State<EditDealPages> createState() => _EditDealPages();
}

class _EditDealPages extends State<EditDealPages> {
   TextEditingController titleController = TextEditingController();
   TextEditingController discriptionController = TextEditingController();
   
@override
void dispose() {
  // Clean up the controller when the widget is removed from the widget tree.
  // This also removes the _printLatestValue listener.
  titleController.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    titleController.text = activeDeal.title!;
    discriptionController.text = activeDeal.discription!;
    return Scaffold(
      backgroundColor: Colors.grey,
    appBar:  AppBar(
      
                automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
           color:Colors.white, //change your color here
           
  ),
        backgroundColor: Colors.orange,
      centerTitle: true,
      
    ),
      body: Center(
        child: Column(children: [
          Container(
            height: 60,

            child: TextField(
              
              onChanged: (value) {
                (activeDeal).title = value;
              },
              controller: titleController,
                style:  TextStyle(color: Colors.white,  fontSize: 22),
              cursorColor: Colors.white,
               decoration: InputDecoration(
                hintText: "Заголовок",
                hintStyle:TextStyle(color: Color.fromARGB(100, 255, 255, 255),  fontSize: 22) ,
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(134, 255, 255, 255)),
                  ),
                     focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Color.fromARGB(134, 255, 255, 255),
                     
                     ),
                    
                  ),)
          ),
          ),
          Container(
            height: 100,
            child: TextField(
                            onChanged: (value) {
                activeDeal.discription = value;
              },
              controller: discriptionController,
  style:  TextStyle(color: Colors.white,  fontSize: 22),
              cursorColor: Colors.white,
              decoration: null,
    textInputAction: TextInputAction.newline,
    keyboardType: TextInputType.multiline,
    maxLines: null,
            ))
        ]),
      )
           
      
    );
  }
}
