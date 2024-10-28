import 'package:flutter/material.dart';
import 'package:uts_papb_julice/screens/signin_screen.dart';
import 'package:uts_papb_julice/screens/signup_screen.dart';
import 'package:uts_papb_julice/theme/theme.dart';
import 'package:uts_papb_julice/widget/custom_scaffold.dart';
import 'package:uts_papb_julice/widget/welcome_button.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "\n \n \n \n \n Selamat Datang \n",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                    TextSpan(
                      text: "Pengguna PICKUP",
                      style: TextStyle(
                        fontSize: 20.0,
                      )
                    ),
                  ]))
              )
            )
             
          ),
          Flexible(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: "Masuk",
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Daftar',
                      onTap: SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}