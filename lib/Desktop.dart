import 'package:flutter/material.dart';

import 'constant.dart';
import 'widget.dart';

class Desktop extends StatefulWidget {
   Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop>
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
    return Scaffold(
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
                            fontSize:30
                        ),
                      ),
                      Text(
                        'KAMIL',
                        style: TextStyle(
                            color: PrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Booton(sizeText: 20,width: 200,height:44,link:'https://api.whatsapp.com/send?phone=+9647712442505&text=Hello', text: 'Whatsapp', ),
                      SizedBox(width: 30,),
                      Booton(sizeText: 20,width: 200,height:44,link:'https://github.com/zaidoonkamil?tab=repositories', text: 'Project'),
                      SizedBox(width: 20,),

                    ],
                  ),
                ],
              ),
              const SizedBox(height: 200,),
              Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Column(
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
                                    fontSize: 28,
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
                                  fontSize: 90,
                                ),
                              ),
                              Text(
                                ' Kamil',
                                style: TextStyle(
                                    color: PrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 90,
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
                                    fontSize:28
                                ),
                              ),
                              Text(
                                ' Mobile Application With Flutter ',
                                style: TextStyle(
                                    color: PrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28
                                ),
                              ),
                              Text(
                                'Developer',
                                style: TextStyle(
                                    color: WhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                          Booton(sizeText: 20,width: 150,height:50 ,link: 'https://drive.google.com/file/d/1W7Q67OJHEQQEp-7ablR_v3f8S1b98hO-/view', text: 'Show CV', color: PrimaryColor,),
                          SizedBox(height: MediaQuery.of(context).size.height*0.07),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '---> Follow Me <---',
                                style: TextStyle(
                                    color: WhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize:22
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              iconButton(
                                  size: 32,
                                  link: 'https://www.instagram.com/zaidoon.k.ali/?hl=ar',
                                  image: 'assets/image/1491580635-yumminkysocialmedia26_83102.png'
                              ),
                              iconButton(
                                  size: 32,
                                  link: 'https://www.facebook.com/profile.php?id=100009966999469',
                                  image: 'assets/image/facebook_icon-icons.com_59205.png'
                              ),
                              iconButton(
                                  size: 32,
                                  link: 'https://github.com/zaidoonkamil',
                                  image: 'assets/image/github_logo_icon_147285.png'
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                ],
              ),
              const SizedBox(height: 40,),
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
                              height: 450,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(colors: [
                                    Colors.pink,
                                    Colors.blue.shade900,
                                  ]),
                                  boxShadow: [
                                    const BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 20),
                                    const BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 20),
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
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
