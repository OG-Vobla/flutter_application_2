import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/authPage.dart';
import 'package:flutter_application_2/services/services.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: UserAccountsDrawerHeader(
                accountEmail: const Text('gggg26705@gmail.com', style: TextStyle(color: Colors.black, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 21),),
                accountName: const Text("Zubr", style: TextStyle(color: Colors.black, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 21),),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                currentAccountPicture: Container(
                  alignment: Alignment.topLeft,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/ClownIcon.png'),
                  ),
                ),
                otherAccountsPictures: [
                  IconButton(
                      onPressed: () async{
                        dbConnection.logOut();
                        Navigator.popAndPushNamed(context, '/');
                      },
                      icon: Icon(Icons.exit_to_app)),
                ],
              )),
          ListTile(
            title: Text("Settings", style: TextStyle(color: Colors.black, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 18),),
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, '/test');
            },
          ),
          ListTile(
            title: Text("Shop", style: TextStyle(color: Colors.black, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 18),),
            leading: Icon(
              Icons.shop,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("About Company", style: TextStyle(color: Colors.black, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 18),),
            leading: Icon(
              Icons.book,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Help", style: TextStyle(color: Colors.black, fontFamily: "IMFellGreatPrimerSC-Regular", fontSize: 18),),
            leading: Icon(
              Icons.help,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}