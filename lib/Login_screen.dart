import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80 ,left: 24),
            child: Column(
              children: const[
                Text('Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w400,
                ),
                ),
                SizedBox(height: 10,),
                Text( 'welcome back,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300
                ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height*0.9,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
            ),
            margin: const EdgeInsets.only(top: 240),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 const SizedBox(height: 80,),
                Container(
                  width: width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const[
                       BoxShadow(
                        color: Color.fromARGB(225, 95, 27, 3),
                        blurRadius: 30,
                        offset: Offset(0, 10)
                      )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[200]!
                      )
                    )
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Email or Phone Number",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[200]!
                      )
                    )
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text('Forgot Password?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: height*0.05,
                  width: width*0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange
                  ),
                  child: const Center(
                    child: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),),
                  )
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('Continue with social media',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                  const SizedBox(width: 60,),
                  Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  child: const Center(
                    child: Text('Facebook',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  )
                ),
                const SizedBox(width: 50,),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black
                  ),
                  child: const Center(
                    child: Text('Github',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  )
                ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}