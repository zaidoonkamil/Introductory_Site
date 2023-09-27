import 'package:flutter/material.dart';

import 'constant.dart';
import 'widget.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BlackColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40,right: 10,top: 30,bottom: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'ZAIDOON.',
                          style: TextStyle(
                              color: WhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              MediaQuery.of(context).size.width*0.03
                          ),
                        ),
                        Text(
                          'KAMIL',
                          style: TextStyle(
                              color: PrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width*0.03
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Booton(height:40,link:'https://api.whatsapp.com/send?phone=+9647712442505&text=Hello', text: 'Whatsapp', ),
                        SizedBox(width: 10,),
                        Booton(height:40,link:'https://github.com/zaidoonkamil?tab=repositories', text: 'Project'),

                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 120,),
                Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hello, My Name Is',
                              style: TextStyle(
                                  color: WhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width*0.03
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Zaidoon',
                              style: TextStyle(
                                  color: WhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width*0.09
                              ),
                            ),
                            Text(
                              ' Kamil',
                              style: TextStyle(
                                  color: PrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width*0.09
                              ),
                            ),
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'I\'m a',
                              style: TextStyle(
                                  color: WhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width*0.028
                              ),
                            ),
                            Text(
                              ' Mobile Application With Flutter ',
                              style: TextStyle(
                                  color: PrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width*0.028
                              ),
                            ),
                            Text(
                              'Developer',
                              style: TextStyle(
                                  color: WhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width*0.028
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                        Booton(sizeText: 12,width: 120,height:40 ,link: 'https://drive.google.com/file/d/1W7Q67OJHEQQEp-7ablR_v3f8S1b98hO-/view', text: 'Show CV', color: PrimaryColor,),
                        SizedBox(height: MediaQuery.of(context).size.height*0.07),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '---> Follow Me <---',
                              style: TextStyle(
                                  color: WhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width*0.03
                              ),
                            ),
                          ],
                    ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            iconButton(
                                link: 'https://www.instagram.com/zaidoon.k.ali/?hl=ar',
                                image: 'assets/image/1491580635-yumminkysocialmedia26_83102.png'
                            ),iconButton(
                                link: 'https://www.facebook.com/profile.php?id=100009966999469',
                                image: 'assets/image/facebook_icon-icons.com_59205.png'
                            ),iconButton(
                                link: 'https://github.com/zaidoonkamil',
                                image: 'assets/image/github_logo_icon_147285.png'
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      final value = _controller.value;
                    return Transform.translate(
                      offset: Offset(0, 10 * value), // Move the container up and down
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: MediaQuery.of(context).size.height*0.8,
                        alignment: Alignment.center,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(colors: [
                                    Colors.pink,
                                    Colors.blue.shade900,
                                  ]),
                                  boxShadow: const [
                                    BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 20),
                                    BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 20),
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child:  ClipRRect(
                                  borderRadius:BorderRadius.circular(20),
                                  child: Image.asset('assets/image/photo_2023-09-26_15-22-45.jpg',fit:BoxFit.fill ),

                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
