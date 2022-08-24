import 'package:flutter_modular/flutter_modular.dart';
import 'package:up2/app/modules/initial/auth/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:up2/app/modules/initial/auth/components/fields.dart';
import 'package:up2/app/modules/initial/components/button.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key? key, this.title = 'AuthPage'}) : super(key: key);
  @override
  AuthPageState createState() => AuthPageState();
}
class AuthPageState extends State<AuthPage> {
  final AuthStore store = Modular.get();
  // MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 193,143),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [

                        Center(child: Image.asset('images/logo/LogoMov.gif', width: 300,)),


                        Container(

                          // WIDTH E CHILD

                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: 
                          
                          // COLUMN CONTAINER 

                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(children: [
                              NameInputFieldFb3(controllerNameMom: store.controllerNameMom, onChanged: null, errorText: null),
                              const SizedBox(height: 10),
                              EmailInputFieldFb3(controllerEmail: store.controllerEmail),
                              const SizedBox(height: 10),
                              PasswordInput(controllerPass: store.controllerPass, hintText: 'Insira sua senha'),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: OutlineButtonFb1(text: "Cadastrar", onPressed: (){
                                  Modular.to.pushReplacementNamed("/home/");
                                }),
                        )
                            ]),
                          ),
                        ),

                        // buttons
                        
                        

                      ],
                    ),
                  );
                }
              )
            )
          ],
        )
      )
    );
  }
}