import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('settings',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.dark_mode_outlined,
          color: Colors.black,
          size: 32,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: width,
            height: height*0.065,
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: const[
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 25,
                     backgroundImage:
                              NetworkImage('https://cdn.fandomwire.com/wp-content/uploads/2023/04/01092504/johnnydepp-1.jpg',scale: 10),
                            ),
                SizedBox(width: 10,),            
                Text('Jhonny Deep',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),
                ),
                SizedBox(width: 170,),
                Icon(
                Icons.edit,
                color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
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
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Row(
                          children: const[
                            Icon(Icons.lock,color: Colors.deepOrange,),
                            SizedBox(width: 52,),
                            Text('Change Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            SizedBox(width: 52,),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,)
                          ],
                        ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                          height: 1,
                          width: width*0.9,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                        onPressed: null,
                        child: Row(
                          children: const[
                            Icon(Icons.translate,color: Colors.deepOrange,),
                            SizedBox(width: 52,),
                            Text('Change Language',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            SizedBox(width: 52,),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,)
                          ],
                        ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                          height: 1,
                          width: width*0.9,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                        onPressed: null,
                        child: Row(
                          children: const[
                            Icon(Icons.location_pin,color: Colors.deepOrange,),
                            SizedBox(width: 52,),
                            Text('Change Location',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            SizedBox(width: 52,),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,)
                          ],
                        ),
                        ),
                    ],
                  ),
                  ),
          const SizedBox(height: 60,),
          Row(
            children: const [
              SizedBox(width: 20,),
              Text('Notification Settings',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 20,),
              const Text('Received Notification',
              style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.w500,
              ),
              ),
              const SizedBox(width: 140,),
              Switch(
               value: true,
               onChanged: (v){},
               activeColor: Colors.deepOrange,
               ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20,),
              const Text('Received Newsletter',
              style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.w500,
               color: Colors.grey
              ),
              ),
              const SizedBox(width: 147,),
              Switch(
               value: false,
               onChanged: (v){},
               activeColor: Colors.deepOrange,
               ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20,),
              const Text('Received Offer Notification',
              style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.w500,
              ),
              ),
              const SizedBox(width: 87,),
              Switch(
               value: true,
               onChanged: (v){},
               activeColor: Colors.deepOrange,
               ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20,),
              const Text('Received App Update',
              style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.w500,
               color: Colors.grey
              ),
              ),
              const SizedBox(width: 140,),
              Switch(
               value: false,
               onChanged: (v){},
               activeColor: Colors.deepOrange,
               ),
            ],
          ),
        ],
      ),
    );
  }
}