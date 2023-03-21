import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Column(
        children: [
          Container(margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("living room",style: TextStyle(
                      fontSize: 22,
                    ),),
                    Text("7 devices ", style: TextStyle(
                      fontSize: 18,color: Colors.black54
                    ),)
                  ],
                ),
                Container(child:
                  Text("Edit"),alignment: Alignment.center,width: 50,height: 20,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),color: Colors.black12,
                ),)

              ],
            ),
          ),
          const SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),color: Colors.grey[300]
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                         children: const [
                           CircleAvatar(backgroundColor: Colors.white54,maxRadius: 30,child: Icon(
                             Icons.tv,size: 30,
                           ),),
                           Text("Tv",style: TextStyle(
                             fontSize: 20,
                           ),)
                         ],
                      ),
                    ),
                    Row(mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Container(margin: const EdgeInsets.only(left: 90),
                          child: SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 40,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                width: 160,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.light_mode,size: 20,
                          ),),
                          Text("Light 1",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SwitcherButton(onColor: Colors.red,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.light_mode,size: 20,
                          ),),
                          Text("Light 1",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                width: 160,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.flip_camera_android,size: 20,
                          ),),
                          Text("Fan 1",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.flip_camera_android,size: 20,
                          ),),
                          Text("Fan 2",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),color: Colors.grey[300]
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: const [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 30,child: Icon(
                            Icons.air_sharp,size: 30,
                          ),),
                          Text("Ac",style: TextStyle(
                            fontSize: 20,
                          ),)
                        ],
                      ),
                    ),
                    Row(mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Container(margin: EdgeInsets.only(left: 90),
                          child: SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 40,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),color: Colors.grey[300]
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: const [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 30,child: Icon(
                            Icons.light,size: 30,
                          ),),
                          Text("Hue",style: TextStyle(
                            fontSize: 20,
                          ),)
                        ],
                      ),
                    ),
                    Row(mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Container(margin: EdgeInsets.only(left: 90),
                          child: SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 40,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),color: Colors.grey[300]
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: const [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 30,child: Icon(
                            Icons.safety_check,size: 30,
                          ),),
                          Text("Ajax",style: TextStyle(
                            fontSize: 20,
                          ),)
                        ],
                      ),
                    ),
                    Row(mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Container(margin: EdgeInsets.only(left: 90),
                          child: SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 40,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                width: 160,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.devices,size: 20,
                          ),),
                          Text("Device 1",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.electrical_services,size: 20,
                          ),),
                          Text("Device 2",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                width: 160,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.sensor_occupied,size: 20,
                          ),),
                          Text("Sensor 1",style: TextStyle(
                            fontSize: 15,
                          ),),
                          SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.grey[300]
                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:  [
                          CircleAvatar(backgroundColor: Colors.white54,maxRadius: 20,child: Icon(
                            Icons.sensor_occupied,size: 20,
                          ),),
                          Text("Sensor 2",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                          ),),
                          SwitcherButton(onColor: Colors.orangeAccent,
                            value: true,size: 30,
                            onChange: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
