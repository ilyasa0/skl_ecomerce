import 'package:flutter/material.dart';

class OnTheWay extends StatelessWidget {
  const OnTheWay({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'What You Buy ?'
        ),
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)) ,
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/technology.png',width: double.infinity
                ,height: 100,),
              const SizedBox(height: 30,),
              const Text('Sorry Something is Wrong Right now',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
            ],
          )),
    );
  }
}
