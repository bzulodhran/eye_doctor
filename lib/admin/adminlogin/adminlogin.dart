import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../admin.dart';

class adminlogin extends StatefulWidget {
  const adminlogin({Key? key}) : super(key: key);

  @override
  _adminloginState createState() => _adminloginState();
}

class _adminloginState extends State<adminlogin> {
  final formKey = GlobalKey<FormState>();
  late String username;
  late String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text('Admin Login Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Text('Admin Login Page', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold), ),
              ),
            ),
            Padding
              (padding: EdgeInsets.all(10),
            ),
            Form(
                key: formKey,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                    padding: EdgeInsets.all( 10.0 ),
                                    child:Icon(
                                      Icons.email,
                                      color:  Colors.black,
                                    )
                                ),
                                labelText: 'username',
                              ),
                              validator: (val) {
                                if (val!.isEmpty){
                                  return'Enter username';
                                }
                              },
                              onChanged:(val)=> username = val,
                            ),
                            Padding
                              (padding: EdgeInsets.all(10),
                            ),

                            TextFormField(
                              obscureText: true,

                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                    padding: EdgeInsets.all( 10.0 ),
                                    child:Icon(
                                      Icons.lock,
                                      color:  Colors.black,
                                    )
                                ),
                                labelText: 'Password',
                              ),
                              validator: (val) {
                                if (val!.isEmpty){
                                  return'Enter Password';
                                }
                              },
                              onChanged: (val) => password = val,
                            ),

                          ],
                        ),
                      ),
                      Padding
                        (padding: EdgeInsets.all(10),
                      ),
                      Center(
                        child: Container(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            textColor: Theme.of(context).primaryColorLight,
                            child: Text('Login'),
                            onPressed: (){
                              if (formKey.currentState!.validate()){
                                formKey.currentState!.save();
                                _formLogin(context);

                              }

                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ))

          ],
        ),
      ),
    );
  }
  void _formLogin(BuildContext context){
    if ((username  ==  'admin') && (password  ==  '12345' )) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext) => admin()));
    }

  }

}