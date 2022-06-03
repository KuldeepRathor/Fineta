import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
            width: 340,
          height: 700,
          decoration: BoxDecoration(
            color: Color(0xFF111727),
             borderRadius: BorderRadius.circular(10)
          ),
          child:
         SingleChildScrollView(
           child: Column(
             children: [
               Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12,15, 0,0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            'PROFILE',style: TextStyle(
                          fontSize: 18,
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(220, 10, 20, 0),
                      child: Align(
                        alignment: Alignment.topRight,
                          child: Icon(Icons.edit,size: 24,)),
                    ),
                  ],
                ),
               Center(
                 child: Stack(
                   children:<Widget> [
                     CircleAvatar(
                       radius:50,
                       backgroundColor: Colors.deepOrangeAccent,
                     ),
                     Positioned(
                       bottom: 10 ,
                         right:10 ,
                         child: Icon(Icons.add_a_photo_outlined)),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(25.0),
                 child: Column(
                   children:<Widget> [
                     Text(
                       'Rohan Kambli',textAlign:TextAlign.center,style: TextStyle(
                       fontSize: 18,
                     )
                     ),
                       Text(
                           'rohankambli@gmail.com',textAlign:TextAlign.center,style: TextStyle(
                         fontSize: 18,color: Color(0xFF809CFF),
                       )
                     ),
                   ],
                 ),
               ),
               Row(
                 mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5), color: Color(0xFF1B223E),
                     ),

                     height: 60,
                     width:150,
                     child:Column(
                       mainAxisAlignment:MainAxisAlignment.center,
                       children: [
                         Align( alignment:Alignment.center,
                           child: Text(
                             '78,516',style: TextStyle(fontSize: 18),
                           ),),
                           Text(
                             'Savings',style: TextStyle(
                             color: Color(0xFF809CFF),fontSize: 18
                           ),
                           )

                       ],
                     ),
                   ),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5), color: Color(0xFF1B223E),
                     ),
                     height: 60,
                     width:150,
                     child:Column(
                       mainAxisAlignment:MainAxisAlignment.center,
                       children: [

                         Text(
                             '45,653',style: TextStyle(
                           fontSize: 18
                         ),
                         ),
                         Text(
                           'Expenditure',style: TextStyle(
                           color: Color(0xFF809CFF),fontSize: 18
                         ),
                         )
                       ],
                     ),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 200,
                   width: 310,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color(0xFF1B223E),),
                     child:Column(
                       children: [
                         Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(10,10,0,0),
                           child: Text( 'Bank Accounts',style: TextStyle(fontSize:18),),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(150, 10, 10, 0),
                           child: Icon(Icons.add,size: 24,),
                         ),

                       ],

                       ),
                         Text('Cardimage'),
                       ],
                     )
                   ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: FaIcon(FontAwesomeIcons.bullseye,color: Color(0xFF809CFF),size: 20,),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Your Targets',style: TextStyle(
                           fontSize: 18,color: Color(0xFF809CFF),
                         ) ),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: FaIcon(FontAwesomeIcons.trophy,color: Color(0xFF809CFF),size: 20,),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Achivements',style: TextStyle(
                           fontSize: 18,color: Color(0xFF809CFF)
                         )),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Icon(Icons.settings,size: 24,color: Color(0xFF809CFF)),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Settings',style: TextStyle(
                           fontSize: 18,color: Color(0xFF809CFF),
                         )),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Icon(Icons.notifications_outlined,size: 24,color: Color(0xFF809CFF)),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Reminders',style: TextStyle(
                           fontSize: 18,color: Color(0xFF809CFF),
                         )),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Icon(Icons.warning_amber_outlined,size: 24,color: Color(0xFF809CFF)),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Report Problems',style: TextStyle(
                           fontSize: 18,color: Color(0xFF809CFF),
                         )),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Icon(Icons.info_outline_rounded,size: 24,color: Color(0xFF809CFF)),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('About Fineta\n Privacy Policy',style: TextStyle(
                           fontSize: 18,color: Color(0xFF809CFF),
                         )),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: FaIcon(FontAwesomeIcons.code,size: 20,color: Color(0xFF809CFF)),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Developer Info',style: TextStyle(
                           fontSize: 18,color: Color(0xFF809CFF),
                         ),),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 310,
                   height:70,
                   decoration: BoxDecoration(
                     color: Color(0xFF1B223E),
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Icon(Icons.login_outlined,color: Colors.red,size: 24,),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('LOGOUT',
                             style: TextStyle(fontSize: 18,color: Colors.red),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),


             ],
           ),
         )
        ),
      ),
    );
  }
}
