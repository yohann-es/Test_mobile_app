import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
int count = 0;


  void _updateTtextt(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body:
      // Container(
      //   decoration:  BoxDecoration(
      //     image:  DecorationImage(image: AssetImage('assets/images/berserk-black-wallpaper.jpg'),
      //     fit: BoxFit.cover
      //     ),
      //   ),
      //   child: null
      // )
      Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Button pressed: $count',
              style: const TextStyle(fontSize: 20),

            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _updateTtextt,
            child: const Text('press'))

          ],
        )
        
        // child: ElevatedButton(onPressed: () {
              
        //       Navigator.of(context).push(
        //         MaterialPageRoute(builder: (BuildContext context){
        //         return Container();
        //         // const SecondPage();
        //       }));
        //   }, 
        //   child: const Text('Press'),
        //   ),
        // Image.asset('assets/images/icons8-win-80.png')
        // Container(
           
        //   width: double.infinity,
        //   height: double.infinity,
        //   color: const Color.fromARGB(255, 243, 237, 238),
          
        //   child:   Text("press the button"), 
        // ),
      ),
    );
  }
}
