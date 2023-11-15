




import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'homepage.dart';
import 'products.dart';





void main()=>
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    
    
  ));
  class SplashScreen extends StatefulWidget {
    const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _HomeState();
}

class _HomeState extends State<SplashScreen> {
  



  
  @override
  Widget build(BuildContext context){
    Timer(
            Duration(seconds: 2),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => OnboardingScreen1()))); 
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 219, 247),
    
      
      body:Center( 
         child:  Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                 children:<Widget>[  
            Center(
              child: Image.asset('assets/images/log1.png',
                     width: 180.0,
          height: 100.0,
          fit: BoxFit.cover,
      ),
               
               
              
                
              
            ),
           
              Center(
                child:  Text(
             "D'Electro",
             style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              fontFamily: 'condensed',
              
              color: Color.fromARGB(255, 77, 57, 207),
             ) ,
            ),
            ),
          
            ],
                 
      ),
         ),
         ),
         
  
         )
         ;
      
        
        


    
  }}

  class OnboardingScreen1 extends StatelessWidget {
          const OnboardingScreen1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 219, 247),
    
      
      body:Center( 
         child:  Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                 children:<Widget>[  
   
   
                Center(
                  
                
                     child: Padding(padding:EdgeInsets.fromLTRB(10, 10, 10, 10), 
                    child:Column(
                    
               children:<Widget>[
                               Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child:Image.asset('assets/images/elect5.png',
 
      ),), 
          SizedBox(height: 20),
               Center(
                 child: Text(
                            "Get all Kinds of Electronics",textAlign: TextAlign.center,
                            style: TextStyle(
                             fontSize: 22,
                             fontWeight: FontWeight.w800,
                             color: Color.fromARGB(255, 77, 57, 207),
                             
                             
                            ) ,
                          
                           ),
               ),
               SizedBox(height: 10),

                Center(
                 child: Text(
                            "Dealers in all kinds of electronics which include phones,computers,Fridges,cookers,Televisions,flat irons......",textAlign: TextAlign.center,
                            style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                             color: Colors.black54,
                             
                             
                            ) ,
                          
                           ),
               ),
              
    
           ],),
            
    ),),
            SizedBox(height: 80,),
         Center(
             child: TextButton(
         
              onPressed:()
             {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  OnboardingScreen2()),
  );

             },
        child: Text('Get Started',
               style: TextStyle(
              fontSize: 16,
             
              color: Colors.white
             ), ),
            style: TextButton.styleFrom(
                 shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                 minimumSize: Size(80, 30),
                 padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
              backgroundColor: Color.fromARGB(255, 77, 57, 207),
              ),
             ),
                 
                 ), ],
                 
               ),
         ),
         ),
      

         )
         ;
      
  }}

  class OnboardingScreen2 extends StatelessWidget {
    const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color.fromARGB(255, 234, 219, 247),

 body:Center( 
         child:  Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                 children:<Widget>[  
   
   
                Center(
                  
                
                     child: Padding(padding:EdgeInsets.fromLTRB(10, 30, 10, 10), 
                    child:Column(
                    
               children:<Widget>[
                               Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child:Image.asset('assets/images/elect6.png',
width: 300, 

      ),), 
          
               Center(
                 child: Text(
                              'Make your Order Now',textAlign: TextAlign.center,
                            style: TextStyle(
                             fontSize: 22,
                             fontWeight: FontWeight.w800,
                             color: Color.fromARGB(255, 77, 57, 207),
                             
                             
                            ) ,
                          
                           ),
               ),
               SizedBox(height: 5),

                Center(
                 child: Text(
                              'Delivery at your door Steps at every location around Kampala,Wakiso,Mukono cost free ',textAlign: TextAlign.center,
                            style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                             color: Colors.black54,
                             
                             
                            ) ,
                          
                           ),
               ),
              
    
           ],),
            
    ),),
            SizedBox(height: 80,),
         Center(
             
            child:  Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget>[
        // Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20))
        // ,
       
        ElevatedButton(onPressed: (){
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OnboardingScreen1()),
  );
          
          // Navigator.pop(context);
          },
      
       child: Text('Back',
       style: TextStyle(
        color: Colors.white,
       ),),
       style:ElevatedButton.styleFrom(
     
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        backgroundColor: Color.fromARGB(255, 77, 57, 207),
        minimumSize: Size(80, 30)),
       ),
       
       ElevatedButton(
         
              onPressed:()
             {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyCustomForm()),
  );

             },
             child: Text('Done',
             style: TextStyle(
           
        
              color: Colors.white
             ), ),
            style: TextButton.styleFrom(
                 shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                  minimumSize: Size(80, 30), 
              backgroundColor: Color.fromARGB(255, 77, 57, 207)),
             ),
                 
                 ],),),
     
                 
                 ],),
         
         
      
           ),),);
      
  }}

    //  

 
// // Create a Form widget.  
class MyCustomForm extends StatefulWidget {  
   const MyCustomForm({super.key});
  @override  
  State<MyCustomForm>createState() => MyCustomFormState();  
  }  
 
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form. 
  bool passwordVisible=false;
     
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Scaffold( 
      backgroundColor: Color.fromARGB(255, 234, 219, 247) ,
     body: 
     Container(
      margin: EdgeInsets.all(5),
     
      child:SingleChildScrollView(
        
// padding: EdgeInsets.all(5),

child: Column(children: [
  
  Padding(padding: EdgeInsets.only(top:100),
   child: Column(
      
 children:<Widget> [
Image.asset('assets/images/log1.png',
                     width: 180.0,
      height: 90,
  fit: BoxFit.cover,),

         Center(
                child:  Text(
             "D'Electro",
             style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              fontFamily: 'condensed',
              
              color: Color.fromARGB(255, 77, 57, 207),
             ) ,
            ),
            ),

         ]
   ),
  
  ),
  Form(
    key: _formKey,
    child: Center(
   child: Padding(padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
  child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    
    children: [
      TextFormField(
        decoration: const InputDecoration(
          prefixIcon: const Icon(Icons.person,size: 30,color: Colors.blue,),
        hintText: 'Enter your Username',
        labelText: 'Username',
        ),
      ),
TextFormField(  

              obscureText: passwordVisible,
                 decoration: InputDecoration(
                  //  border: UnderlineInputBorder(),
                   
                   
                   hintText: "Password",
                   labelText: "Password",
                   helperText:"Password must contain special character",
                   helperStyle:TextStyle(color:Colors.orange[900]),
                        prefixIcon: const Icon(Icons.password,size: 30,
                
                color: Colors.blue, ),
                 
                   suffixIcon: IconButton(
                     icon: Icon(passwordVisible
                         ? Icons.visibility
                         : Icons.visibility_off,
                         color: Colors.black,),
                     onPressed: () {
                       setState(
                         () {
                           passwordVisible = !passwordVisible;
                         },
                       );
                     },
                   ),
                  //  alignLabelWithHint: false,
                  //  filled: true,
                 ),
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done,
               ),
          

    ],
   ),),),),
Container(
margin: EdgeInsets.only(top: 40),
  child: ElevatedButton(onPressed: (){
Navigator.push(
         context,
         MaterialPageRoute(builder: (context) =>  Homep()),);

      },
      style:ElevatedButton.styleFrom(
   shape:ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Color.fromARGB(255, 77, 57, 207),
    minimumSize:Size.fromHeight(50),
   
       
        ),
      
       child:Text('Submit',
      style: TextStyle(
        color: Colors.white,
      
  ),),),),                                                                                                                                                                                                                                             

 Padding(padding: EdgeInsets.only(top:100),
 child:
 Column(
 
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [

      InkWell(
        onTap: () {Navigator.push(
           context,MaterialPageRoute(builder: (context) =>  Homep()),);},
      
      child: Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
       child: Text.rich(
        TextSpan(
          children: [

          TextSpan(
            text: 'Forgot Password?',
            style: TextStyle(
              color: Color.fromARGB(255, 77, 57, 207),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),])
          
        
       ),
     ),
      ),
      InkWell(
     child:Text.rich(
      TextSpan(children: [
  TextSpan(
    text: 'Donot Have An Account? | ',
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    )

  ),
            TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
          // Single tapped.
        },
        
       
              
              
              text: 'SignUp',
              style: TextStyle(
                color: Color.fromARGB(255, 77, 57, 207),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),]),

 ),),

 



    ],),),]),),),



  

    );



 
  }  
}  




  