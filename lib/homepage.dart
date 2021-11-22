import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:frist_app/video_info.dart';
import 'package:get/get.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List info= [];

  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
    info = json.decode(value);
    });
  }
   @override
   void initState(){
     super.initState();
     _initData();
   }
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  Container(
        padding: const EdgeInsets.only(top: 20,left:30,right: 30),
        child: Column(
          children: [
            Row(
              children:  [
                const Text(
                  "Training", style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                    ),
                  ),
                  Expanded(child: Container()),

                  const Icon(Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black),
                  const SizedBox(width: 10,),
                  const Icon(Icons.calendar_today_outlined,
                  size: 20,
                  color: Colors.black,),
                  const SizedBox(width: 15,),
                  const Icon(Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.black),
              ],
            ),
          const SizedBox(height: 30,),
          Row(
            children: [ const Text(
                  "Your Program", style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                    ),
                  ),
                  Expanded(child: Container()),
                  const Text(
                  "Detail", style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700
                    ),
                  ),
                 const SizedBox(width: 5,),
                 InkWell(
                   onTap: (){
                     Get.to(()=>const VideoInfo());  //Routing the videoinfo file,Routing the videoinfo file,Routing the videoinfo file
                   },
                   child: const Icon(Icons.arrow_forward,
                   size: 20,
                   color: Colors.black,),
                 )

            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
            gradient:  LinearGradient(
            colors: [
            Colors.blue.withOpacity(0.8),
            Colors.yellow.withOpacity(0.9)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight
            ),
            borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(88)
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(5,10),
                blurRadius: 10,
                color: Colors.blue.withOpacity(0.5)
              )
            
            ]
            ),          
            child: Container(
              padding: const EdgeInsets.only(left: 20,top: 25,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    "Next workout", style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      
                      ),
                    ),
                     const SizedBox(height: 5,),
                  const Text(
                    "Legs Toning", style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text(
                    "and Glutes Workout", style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 25,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        Row(
                          children: [
                            const Icon(Icons.timer,size: 20, color: Colors.white,),
                        const SizedBox(width: 10,),
                    const Text(
                    "60 min", style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      
                      ),
                    ),
                  ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.blue,
                          blurRadius: 10,
                          offset: const Offset(4, 8)


                        )
                      ]
                    ),
                    child: const Icon(Icons.play_circle_fill,
                    color: Colors.white, size: 60,),
                  )
                      ],
                    )
                ],
                ),
            )
            ),
            const SizedBox(height: 5,),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:const EdgeInsets.only(top: 30),
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image:const DecorationImage(image: const AssetImage(
                      "assets/fun.jpg"
                    ),
                    fit: BoxFit.fill
                    ),
                   boxShadow:[
                     BoxShadow(
                       blurRadius: 40,
                       offset: const Offset(8, 10),
                       color: Colors.lightBlue.withOpacity(0.3)
                       ),
                         BoxShadow(
                       blurRadius: 10,
                       offset: const Offset(-1, -5),
                       color: Colors.lightBlue.withOpacity(0.3)
                       )
                   ]
                  ),
                  
                ),
                 Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(right: 200,bottom: 30),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image:const DecorationImage(image: const AssetImage(
                      "assets/aa.png"
                    ),
                    fit: BoxFit.fill
                    ),
                )
                 ),
                 Container(
                   width: double.maxFinite,
                   height: 100,
                   
                   margin:const EdgeInsets.only(left: 150,top: 50),
                   
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                      const Text("You are doing great",
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),),
                      const SizedBox(height: 10,),
                      RichText(text: const TextSpan(
                        text: "keep it up\n",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          const TextSpan(text: "stick to your plan")
                        ]
                      ))
                     ],
                   ),
                 )
              ],
            ),
          ),
          
          Row(
            children: [
              const Text("Area of Foucs",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),)
              
            ],
          ),
          Expanded(child: OverflowBox(
            maxWidth: MediaQuery.of(context).size.width,
            child: MediaQuery.removePadding(
              removeTop: true,
              context:context,
              child: ListView.builder(
                itemCount: (info.length.toDouble()/2).toInt(),
                itemBuilder: (_, i){
                  int a = 2*i;
                  int b= 2*i+1;
                  return Row(children: [
                    Container(
                      width:(MediaQuery.of(context).size.width-90)/2,
                      height:170 ,
                      margin: const EdgeInsets.only(left: 30,bottom: 15,top:15 ),
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image:DecorationImage(image: AssetImage(
                          info[a]['img']
                        ),
                        fit: BoxFit.fill
                        ),
                        boxShadow:[
                          BoxShadow(
                            blurRadius: 3,
                            offset: const Offset(5,5),
                            color: Colors.white24.withOpacity(0.1)
                          ),
                           BoxShadow(
                            blurRadius: 3,
                            offset: const Offset(-5,-5),
                            color: Colors.white24.withOpacity(0.1)
                          )
                        ]
                    ),
                   child: Center(
                     child:Align(
                       alignment:Alignment.bottomCenter,
                       child: Text(
                         info[a]["title"],
                         style: const TextStyle(
                           fontSize: 20,
                           color: Colors.blueAccent
                         ),
                       )
                       ,) ,) ,
                    ),
                     Container(
                      width:(MediaQuery.of(context).size.width-90)/2,
                      height:170 ,
                      margin: const EdgeInsets.only(left: 30,bottom: 15,top: 15),
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image:DecorationImage(image: AssetImage(
                          info[b]['img']
                        ),
                        fit: BoxFit.fill
                        ),
                        boxShadow:[
                          BoxShadow(
                            blurRadius: 3,
                            offset: const Offset(5,5),
                            color: Colors.white24.withOpacity(0.1)
                          ),
                           BoxShadow(
                            blurRadius: 3,
                            offset: const Offset(-5,-5),
                            color: Colors.white24.withOpacity(0.1)
                          )
                        ]
                    ),
                   child: Center(
                     child:Align(
                       alignment:Alignment.bottomCenter,
                       child: Text(
                         info[b]["title"],
                         style: const TextStyle(
                           fontSize: 20,
                           color: Colors.blueAccent
                         ),
                       )
                       ,) ,) ,
                     )
                  ],);
                }
                ),
            ),
          ))
          ],
        )
        ,
      ),
      
    );
  }
}
  