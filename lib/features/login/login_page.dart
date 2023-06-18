import 'package:bamboukreyol/core/constants/string_constants.dart';
import 'package:bamboukreyol/core/extensions/context_extensions.dart';
import 'package:bamboukreyol/core/services/auth_service.dart';
import 'package:bamboukreyol/features/login/widgets/rounded_filled_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/route_names.dart';
import '../../flavors.dart';
import '../../shared/widgets/spaces.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userCodeController = TextEditingController();

  Future<bool> signInUser() async{
    try{
       await Auth().signInWithEmailPassword(email: userCodeController.text);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      errorMessage = "Erreur de connexion";
      return false;
    }
  }

  String? _errorMessage;

  set errorMessage(String? message){
    _errorMessage = message;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    userCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Spacer(flex: 1),
                Text("${StringConstants.belBonjou} (${F.name})", style: context.t.titleLarge),
                const Spacer(),
                const CircleAvatar(radius: 70, backgroundImage: AssetImage(StringConstants.logoBkWhite)),
                const VSpace(24),
                Text(StringConstants.kodLa, style: context.t.titleSmall),
                const VSpace(16),
                RoundedFilledTextField(MediaQuery.of(context).size.width / 1.5, controller: userCodeController),
                if(_errorMessage != null ) ...[
                  const VSpace(8),
                  Text(_errorMessage!, textAlign: TextAlign.center, style: context.t.labelSmall)
                ],
                const Spacer(flex: 1),
                ElevatedButton(
                  onPressed: () async {
                    final isLogged = await signInUser();
                    if(isLogged && mounted) context.pushNamed(RouteName.homePage);
                  },
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: const Icon(Icons.play_arrow, color: Colors.white),
                ),
                const Spacer(flex: 3),
                Text(StringConstants.appRights, textAlign: TextAlign.center, style: context.t.labelSmall),
                const VSpace(8),
                Text(StringConstants.versionNumber, textAlign: TextAlign.center, style: context.t.labelSmall?.copyWith(fontWeight: FontWeight.w800)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
