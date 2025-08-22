import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
int count = 0;

  @override
  void initState(){
    super.initState();
    _loadCounter();
  }
  Future<void> _loadCounter() async {
    final prefs = await  SharedPreferences.getInstance();
    setState(() {
      count = prefs.getInt('count') ?? 0;
    });
  }

  Future<void> _updateTtextt() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      count  = (prefs.getInt('count') ?? 0 ) + 1;
      prefs.setInt('count', count);
    });
  }
  Future<void> _unUpdateText() async{
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      count  = (prefs.getInt('count') ?? 0 ) - 1;
      prefs.setInt('count', count);
    });
  }
  Future<void> _resetText()  async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      count  = 0;
      prefs.setInt('count', count);
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
            child: const Text('increase')),
            ElevatedButton(onPressed: _unUpdateText, 
            child: const Text('decrease')),
            ElevatedButton(onPressed: _resetText,
            child: const Text('resert'))


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
