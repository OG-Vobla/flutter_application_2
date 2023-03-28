import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/authPage.dart';
import 'package:flutter_application_2/homePage.dart';
import 'package:flutter_application_2/services/model.dart';
import 'package:provider/provider.dart';

class Fake extends StatelessWidget {
  const Fake({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel? userModel = Provider.of<UserModel?>(context);
    final bool check = userModel != null;
    return check? HomePage() : AuthPage();
  }
}