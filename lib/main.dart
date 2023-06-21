import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:slide_to_act/slide_to_act.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Webingo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
      routes: {
        '/secondScreen': (context) => const SecondScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void navigateToSecondScreen() {
    Navigator.pushNamed(context, '/secondScreen');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.brown[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
              angle: math.pi / -12, // 45 degrees in radians
              child: Image.asset(
                'assets/images/—Pngtree—hand drawn cartoon credit card_4393806.png',
              ),
            ),

            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Let's ",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                          Text("keep Your ",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Financial Under ",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Control ",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),
                          Text("just with ",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Your Smartphone",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SwipeButton(
                          thumbPadding: EdgeInsets.all(3),
                          thumb: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          // elevationThumb: 2,
                          // elevationTrack: 2,
                          child: Text(
                            "Slide to Continue",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          activeThumbColor: Colors.green,
                          activeTrackColor: Colors.grey[900],
                          onSwipe: () {
                            navigateToSecondScreen();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.asset(
            'assets/images/images (1).png',
          ),
          title: RichText(text: TextSpan(text: "Hello ",style: TextStyle(
              color: Colors.white, fontSize: 18),
          children: <TextSpan>[TextSpan(text: "Nishar",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20))])),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => thirdscreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.menu),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Balance",style: TextStyle(color: Colors.grey),),
                        Text("\$548,460,00",style: TextStyle(color: Colors.white,fontSize: 40),),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      children: [
                        Icon(Icons.arrow_circle_right_outlined),
                        SizedBox(width: 5,),
                        Text("With draw  "),
                      ],
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Koray Okumus",style: TextStyle(color: Colors.black),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("19,930.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("USD",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                            Text("***3508",style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.green, Colors.greenAccent],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 150,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Koray Okumus",style: TextStyle(color: Colors.white),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("19,930.00",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("USD",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            Text("***3508",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pink, Colors.purple],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 150,
                      width: 150,
                      child: Center(child: Text("+",style: TextStyle(color: Colors.white,fontSize: 30),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.black, Colors.grey],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey[300],
                  child: Text(
                    '+',
                    style: TextStyle(color: Colors.black,fontSize: 30),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey,
                  child:Image.asset(
                    'assets/images/images (2).png',
                  ),
                ),
              ),SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey,
                  child: Image.asset(
                    'assets/images/images (2).png',
                  ),
                ),
              ),SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey,
                  child:Image.asset(
                    'assets/images/images (2).png',
                  ),
                ),
              ),SizedBox(width: 10,),
            ],
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transactions",style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text("More",style: TextStyle(color: Colors.grey,fontSize: 20),),
                ],
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.blueGrey[900],
              ),
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      // radius: 45,
                      // backgroundColor: Colors.grey,
                      child:Image.asset(
                        'assets/images/spotify.png',
                      ),
                    ),
                    title: Text('Spotify',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Dec 8,2023',style: TextStyle(color: Colors.white),),
                    trailing: Text('-\$36.00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      // radius: 45,
                      // backgroundColor: Colors.grey,
                      child:Image.asset(
                        'assets/images/netflix.png',
                      ),
                    ),
                    title: Text('Netflix',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Dec 6,2023',style: TextStyle(color: Colors.white),),
                    trailing: Text('-\$23.00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  // Add more ListTile widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class thirdscreen extends StatefulWidget {
  const thirdscreen({Key? key}) : super(key: key);

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  TextEditingController _amountController = TextEditingController();
  double _currentAmount = 0.0;

  void _addToAmount(double value) {
    setState(() {
      _currentAmount += value;
      _amountController.text = _currentAmount.toStringAsFixed(2);
    });
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () {
          Navigator.pop(context);
        },child: Icon(Icons.arrow_back)),
        title: RichText(text: TextSpan(text: "Hello ",style: TextStyle(
            color: Colors.white, fontSize: 18),
            children: <TextSpan>[TextSpan(text: "Nishar",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20))])),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.keyboard_option_key),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              color: Colors.blueGrey[900],
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/images (2).png'),
                ),
                title: Text('Nishar Multani',style: TextStyle(color: Colors.white),),
                subtitle: Text('01356546***',style: TextStyle(color: Colors.white),),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                  onPressed: () {
                    // Add your desired action here
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _amountController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Enter an Amount',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixText: '\$',
                  prefixStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.grey[900],
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _addToAmount(10.0);
                      },
                      child: Text('\$10'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {
                        _addToAmount(100.0);
                      },
                      child: Text('\$100'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {
                        _addToAmount(1000.0);
                      },
                      child: Text('\$1000'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {
                        _addToAmount(5000.0);
                      },
                      child: Text('\$5000'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {
                        _addToAmount(10000.0);
                      },
                      child: Text('\$10000'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Choose Card",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("VISA",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                                Icon(Icons.pending,color: Colors.white,)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Family",style: TextStyle(color: Colors.black,),),
                                    Text("\$1329.02",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("***2141",style: TextStyle(color: Colors.white),),
                                Text("04/28",style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                      ),                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blueGrey, Colors.grey],
                      ),
                    ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("VISA",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                                Icon(Icons.pending,color: Colors.white,)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Salary",style: TextStyle(color: Colors.black,),),
                                    Text("\$1329.02",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("***2141",style: TextStyle(color: Colors.white),),
                                Text("04/28",style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                      ),                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blueGrey, Colors.grey],
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your desired action here
                },
                child: Text('Transfer Money',style: TextStyle(fontSize: 15),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

