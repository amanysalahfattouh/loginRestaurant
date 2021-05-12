import'package:flutter/material.dart';
import 'kitchen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text('Login Screen',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:SingleChildScrollView(
        child: Center(
            child:Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/background.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Text('Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.white
                          ),),
                        SizedBox(height: 40),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                border: InputBorder.none,
                                hintText: "User",
                                hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.email),
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),


                        ),
                        SizedBox(height: 20,),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock),
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      // ignore: deprecated_member_use
                        child: RaisedButton(
                          child: Text("Login",
                              style: TextStyle(

                                  fontWeight: FontWeight.bold
                              )),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Kitchen() ));

                          },

                        )

                    ),
                  ),
                  SizedBox(height: 70,),
                  Text("Forgot password", style: TextStyle(color: Colors.blue))
                ],
              ),
            )

        ),
      )
          );
  }
}


