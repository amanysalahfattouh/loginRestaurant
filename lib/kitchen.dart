import 'package:flutter/material.dart';
class Kitchen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Restaurant Menu',
          style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0
          ) ,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widgitCard('image/burger.PNG','Burger' ),
              SizedBox(height: 10,),
              widgitCard('image/pasta.PNG','pasta'),
              SizedBox(height: 10,),
              widgitCard('image/chicks.PNG','chicks'),
              SizedBox(height: 10,),
              widgitCard('image/pizza.PNG','pasta'),
            ],
          ),
        ),
      ),
    );
  }
  Widget widgitCard(String pathImage, foodName ){
    return Container(
      height: 300,
      width: double.infinity,


      decoration: BoxDecoration(
       borderRadius:BorderRadius.circular(30.0),
        color: Colors.deepPurpleAccent,
      ),

      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('${pathImage}'),
              height: 250,
              width: 320,),
            SizedBox(height: 5,),
            Text('${foodName}', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          ],
        ),
      )
    );
  }
}
