import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';
import 'products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';


  class Homep extends StatelessWidget {
          // const OnboardingScreen1({super.key}),
          
List<String>images=['assets/images/elect5.png','asests/images\elect5.png','assets/images/elect5.png','assets/images/elect5.png',
];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 242, 246) ,
            appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 77, 57, 207),
          titleTextStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                     leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
            
          ),
              
          title:Row(children:[
          Center(child: Container(
            margin: EdgeInsets.only(left: 10),
            width: 210,
            height: 35,
            color:Color.fromARGB(255, 77, 57, 207),
          child:TextField(
  style: TextStyle(fontSize: 16.0,color: Colors.white),
   // Adjust the text size
  decoration: InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
    
    hintText: 'Search Product...',hintStyle: TextStyle(
      color: Colors.white60,
    ),
    suffixIcon: Icon(Icons.search, size: 20.0,color: Colors.white60,), // Adjust the icon size
 
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      
       borderRadius: BorderRadius.circular(40.0), // Set the border color when the field is not focused
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white), // Set the border color when the field is focused
    ),),

),),),
Container(
  margin: EdgeInsets.only(left:50),
child:Icon(Icons.logout)),

        ]),),
        
   drawer: Drawer(
      
        child: ListView(
    
          children: <Widget>[
          
            UserAccountsDrawerHeader(
               accountName: const Text('EdnaFloren'),
              accountEmail: const Text('ednafloren27@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  //removed new key word
                  backgroundColor: Color.fromARGB(255, 234, 219, 247),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                  //removed new
                  color: Color.fromARGB(255, 3, 3, 4)),
            ),

            //drawer body

            InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("Home"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                )),

            InkWell(
                        child: const ListTile(
                  title: Text("My Account"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                onTap: () {                
       },
      ),

            InkWell(
                onTap: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Products()),);
  
          
          // Navigator.pop(context);
          
                },
                child: const ListTile(
                  title: Text("Products"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.black,
                  ),
                )),

        
            ],),),
      
      body:

    SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child:Container(
            color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
           children:[
            Container(
                margin: EdgeInsets.symmetric(horizontal:30,vertical: 5),
              
                child:  Text(
                'Lastest ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
             
                ),
    ),),
            
            
          Container(
            height: 150,
            padding: EdgeInsets.all(10),
          
        // color: Colors.black45,
            
            child:  GridView.count(
               crossAxisSpacing: 22,
               mainAxisSpacing: 10,
               crossAxisCount: 1,
               childAspectRatio: 0.35,
               scrollDirection: Axis.horizontal,
       
              //  shrinkWrap: false,
               children: <Widget> [
                            ClipRRect(
      
      borderRadius:BorderRadius.circular(10),
      child:SizedBox.fromSize(
         size:Size.fromRadius(70),
      child: Image.asset('assets/images/elec4.jpg',fit: BoxFit.fill,
     ),
              ),
            ),

                                     ClipRRect(
      
      borderRadius:BorderRadius.circular(10),
      child:SizedBox.fromSize(
         size:Size.fromRadius(70),
      child: Image.asset('assets/images/elec2.jpg',fit: BoxFit.cover,
      width: 100,),
              ),
            ),

            
                                     ClipRRect(
      
      borderRadius:BorderRadius.circular(10),
      child:SizedBox.fromSize(
         size:Size.fromRadius(70),
      child: Image.asset('assets/images/elec1.jpg',fit: BoxFit.cover,
      width: 100,),
              ),
            ),

            
                                     ClipRRect(
      
      borderRadius:BorderRadius.circular(10),
      child:SizedBox.fromSize(
         size:Size.fromRadius(70),
      child: Image.asset('assets/images/elec2.jpg',fit: BoxFit.cover,
      width: 100,),
              ),
            ),
               ],
             ),),

            //  categories 

            Container(
                margin: EdgeInsets.symmetric(horizontal:30,vertical: 5),
              
                child:  Text(
                'Categories ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
             
                ),
    ),),
  //  categories grid
     Container(
            height: 120,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            margin: EdgeInsets.all(0),
   
            
 
        decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
      //  color: Colors.black54,
  ),
            child:  GridView.count(
               crossAxisSpacing: 5,
               mainAxisSpacing: 0.001,
               crossAxisCount: 1,
               childAspectRatio: 1.0,
               scrollDirection: Axis.horizontal,
       
               shrinkWrap: false,
               children: <Widget> [
                   
                        Column(children:[
                          
                Image.asset('assets/images/tvicon.png',
                width: 30,height:30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Tvs',
                  style:TextStyle(
                    color:Colors.white70,
                    fontSize: 12,
                  )),
                ),
          
             
              ]
        ),

                      Column(children:[
             Image.asset('assets/images/fridgeicon.png',width: 30,height:30,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: const Text('Fridges',
                 style:TextStyle(
                 color:Colors.white70,
                 fontSize: 12,
               )),
             ),]
        ),

                      Column(children:[
             Image.asset('assets/images/compicon.png',width: 30,height:30,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: const Text('Computers',
                 style:TextStyle(
                 color:Colors.white70,
                 fontSize: 12,
               )),
             ),
        

              
         
           ],),

                      Column(children:[
           Image.asset('assets/images/flaticon.png',width: 30,height:30),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: const Text('FlatIrons',
                 style:TextStyle(
               color:Colors.white70,
               fontSize: 12,
             )),
           ),]
        ),

                      Column(children:[
                Image.asset('assets/images/woffericon.png',width: 30,height:30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Woffers',
                               style:TextStyle(
                    color:Colors.white70,
                    fontSize: 12,
                  )),
                ),]
        ),

                      Column(children:[
               Image.asset('assets/images/cookericon.png',width: 30,height:30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Cookers',
                 style:TextStyle(
                  color:Colors.white70,
                  fontSize: 12,
                  
                )),
              ),]
        ),

                      Column(children:[
              
               Image.asset('assets/images/kettleicon.png',width: 30,height:30),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Kettles',
                 style:TextStyle(
                   color:Colors.white70,
                   fontSize: 12,
                   
                 )),
               ),]
        ),  ],
             ),),

        // fovourates
     


   


          Container(
                height: 650,
            padding: EdgeInsets.only(left:20,right:20,top:22),
            margin: EdgeInsets.symmetric(horizontal:15,vertical:12),
   
            
        // color: Colors.white,
        decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
color: Colors.black54,),

              
  child:Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,

        
    children: 
  [
 Padding(padding: EdgeInsets.only(left:3,bottom: 15),
                          child:  Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
             
              
                      Text(
                'Favourites ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.white70,
             
                ),
    ), 
    Text('Order Now!',
       style: TextStyle(
                  fontSize: 16,
          
                  color: Colors.white70,
             
                ),
   ), ]),),

  Container(
    height: 500,
  
    child: 
                  GridView.count(
               crossAxisSpacing: 10,
               mainAxisSpacing: 1,
               crossAxisCount: 2,
              //  childAspectRatio: 1.0,
               
       
              //  shrinkWrap: false,
               children: <Widget> [
 
           

          Column(children:[
Card(
  color: Color.fromARGB(31, 114, 93, 93),
  margin: EdgeInsets.only(top: 2),
          clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/fr2.jpg',height:60,width:400,
                  fit: BoxFit.fill,
                ),
                Padding(padding:EdgeInsets.only(top: 5,right: 45),
             
                child:Text('Single door Fridge',textAlign: TextAlign.left,
                style:TextStyle(
                
                color:Colors.white,
                fontSize: 10,
                letterSpacing: 0.5,
                
                )),),

                 Padding(padding:EdgeInsets.only(right: 90,bottom: 5),
                child:Text('10000Shs',
                style:TextStyle(
                color:Colors.deepOrange,
                fontSize: 12,
                fontWeight: FontWeight.w700
                )),),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
                elevation: 5,
         
         ),
         Padding(padding: EdgeInsets.only(top:10),
          child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(30),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
          onPressed: (){},
         child: Text('Order',
         style: TextStyle(
          fontWeight: FontWeight.w600,
         ),)))
               ]),

              // 2
                        Column(children:[
Card(
  color: Color.fromARGB(31, 114, 93, 93),
  margin: EdgeInsets.only(top: 2),
          clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/w1.jpg',height:60,width:400,
                  fit: BoxFit.fill,
                ),
                Padding(padding:EdgeInsets.only(top: 5,right: 45),
             
                child:Text('Woffer',textAlign: TextAlign.left,
                style:TextStyle(
                
                color:Colors.white,
                fontSize: 10,
                letterSpacing: 0.5,
                
                )),),

                 Padding(padding:EdgeInsets.only(right: 90,bottom: 5),
                child:Text('10000Shs',
                style:TextStyle(
                color:Colors.deepOrange,
                fontSize: 12,
                fontWeight: FontWeight.w700
                )),),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
                elevation: 5,
         
         ),
         Padding(padding: EdgeInsets.only(top:10),
          child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(30),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
          onPressed: (){},
         child: Text('Order',
         style: TextStyle(
          fontWeight: FontWeight.w600,
         ),)))
               ]),

// 3
          Column(children:[
Card(
  color: Color.fromARGB(31, 114, 93, 93),
  margin: EdgeInsets.only(top: 2),
          clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/tv4.jpg',height:60,width:400,
                  fit: BoxFit.fill,
                ),
                Padding(padding:EdgeInsets.only(top: 5,right: 45),
             
                child:Text('FlatScreen 32Inches',textAlign: TextAlign.left,
                style:TextStyle(
                
                color:Colors.white,
                fontSize: 10,
                letterSpacing: 0.5,
                
                )),),

                 Padding(padding:EdgeInsets.only(right: 90,bottom: 5),
                child:Text('10000Shs',
                style:TextStyle(
                color:Colors.deepOrange,
                fontSize: 12,
                fontWeight: FontWeight.w700
                )),),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
                elevation: 5,
         
         ),
         Padding(padding: EdgeInsets.only(top:10),
          child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(30),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
          onPressed: (){},
         child: Text('Order',
         style: TextStyle(
          fontWeight: FontWeight.w600,
         ),)))
               ]),

  // 4
            Column(children:[
Card(
  color: Color.fromARGB(31, 114, 93, 93),
  margin: EdgeInsets.only(top: 2),
          clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/tv2.jpg',height:60,width:400,
                  fit: BoxFit.fill,
                ),
                Padding(padding:EdgeInsets.only(top: 5,right: 45),
             
                child:Text('FlatScreen 32Inches',textAlign: TextAlign.left,
                style:TextStyle(
                
                color:Colors.white,
                fontSize: 10,
                letterSpacing: 0.5,
                
                )),),

                 Padding(padding:EdgeInsets.only(right: 90,bottom: 5),
                child:Text('10000Shs',
                style:TextStyle(
                color:Colors.deepOrange,
                fontSize: 12,
                fontWeight: FontWeight.w700
                )),),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
                elevation: 5,
         
         ),
         Padding(padding: EdgeInsets.only(top:10),
          child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(30),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
          onPressed: (){},
         child: Text('Order',
         style: TextStyle(
          fontWeight: FontWeight.w600,
         ),)))
               ]),

  // 5
          Column(children:[
Card(
  color: Color.fromARGB(31, 114, 93, 93),
  margin: EdgeInsets.only(top: 2),
          clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/w1.jpg',height:60,width:400,
                  fit: BoxFit.fill,
                ),
                Padding(padding:EdgeInsets.only(top: 5,right: 45),
             
                child:Text('Home Theatre',textAlign: TextAlign.left,
                style:TextStyle(
                
                color:Colors.white,
                fontSize: 10,
                letterSpacing: 0.5,
                
                )),),

                 Padding(padding:EdgeInsets.only(right: 90,bottom: 5),
                child:Text('10000Shs',
                style:TextStyle(
                color:Colors.deepOrange,
                fontSize: 12,
                fontWeight: FontWeight.w700
                )),),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
                elevation: 5,
         
         ),
         Padding(padding: EdgeInsets.only(top:10),
          child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(30),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
          onPressed: (){},
         child: Text('Order',
         style: TextStyle(
          fontWeight: FontWeight.w600,
         ),)))
               ]),

     //6
               Column(children:[
Card(
  color: Color.fromARGB(31, 114, 93, 93),
  margin: EdgeInsets.only(top: 2),
          clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/tv1.jpg',height:60,width:400,
                  fit: BoxFit.fill,
                ),
                Padding(padding:EdgeInsets.only(top: 5,right: 45),
             
                child:Text('FlatScreen 32Inches',textAlign: TextAlign.left,
                style:TextStyle(
                
                color:Colors.white,
                fontSize: 10,
                letterSpacing: 0.5,
                
                )),),

                 Padding(padding:EdgeInsets.only(right: 90,bottom: 5),
                child:Text('10000Shs',
                style:TextStyle(
                color:Colors.deepOrange,
                fontSize: 12,
                fontWeight: FontWeight.w700
                )),),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
                elevation: 5,
         
         ),
         Padding(padding: EdgeInsets.only(top:10),
          child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(30),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
          onPressed: (){},
         child: Text('Order',
         style: TextStyle(
          fontWeight: FontWeight.w600,
         ),)))
               ]),  





                  
                  
     ] ,
     ),
  ),
     
        Text('Veiw More',textAlign: TextAlign.center,
                style:TextStyle(
                
                color:Colors.blue,
                fontSize: 14,
                letterSpacing: 0.5,
                
                )),
     
       ],
           
  ),
            
    ),
    ]
    )
    
    ) 
    
    
    )








    ); }}
  






      //                                ClipRRect(
      
      // borderRadius:BorderRadius.circular(10),
      // child:SizedBox.fromSize(
      //    size:Size.fromRadius(70),
      // child: Image.asset('assets/images/elec2.jpg',fit: BoxFit.cover,
      // width: 100,),
      //         ),
      //       ),

            
      //                                ClipRRect(
      
      // borderRadius:BorderRadius.circular(10),
      // child:SizedBox.fromSize(
      //    size:Size.fromRadius(70),
      // child: Image.asset('assets/images/elec2.jpg',fit: BoxFit.cover,
      // width: 100,),
      //         ),
      //       ),

            
      //                                ClipRRect(
      
      // borderRadius:BorderRadius.circular(10),
      // child:SizedBox.fromSize(
      //    size:Size.fromRadius(70),
      // child: Icon(Icons.abc_outlined,
      // width: 100,),
      //         ),
      //       ),
             
         