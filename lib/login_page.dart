


import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,

      body:Center(
        child:Column(

          children:<Widget> [
            Padding(
              padding: const EdgeInsets.only(top:120.0),
              child: Center(
                child: Container(
                  width: 250,
                  height: 200,
                  child: Image.network('https://www.saib.com.sa/sites/default/files/logo.png'),
                ),
              ),
            ),
             Center(
                child: Container(
                  width: 250,
                  child:const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Username',

                    ),
                  )
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                    width: 250,
                    child:const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Password',

                      ),
                    )
                ),
              ),
            const SizedBox(height: 10,),
          TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(Size(250, 10)),
              backgroundColor:MaterialStateProperty.all<Color>(Colors.yellow),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
            ),
              onPressed: () => print('Button Pressed'),
              child: const Text('Login',
              style: TextStyle(
                color: Colors.black
              ),))
          ],
        ),

      )
    );
  }
}