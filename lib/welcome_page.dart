import 'package:flutter/material.dart';
import 'package:irbid_app/signup_page.dart';

import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/welcome.png'), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/logo.png'),
                height: 150,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'المنصة الالكترونية لخدمات',
                    style: TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'بلدية إربد الكبرى',
                    style: TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFFFFFFFF),
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'عزيزنا المواطن،',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Dubai',
                      color: Color(0XFFFFFFFF),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'أهلا وسهلا بك في تطبيق بلدية إربد الكبرى!',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Dubai',
                      color: Color(0XFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 40.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'يسعى تطبيقنا لتسهيل معاملات التبليغ عن الفـساد والمشاكل والمـخالـفات لـدى مواطنين بلديتنا العزيزة إربد.',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFFFFFFFF),
                        fontSize: 19,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0XFF00473D),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              fontFamily: 'Dubai',
                              color: Color(0XFFFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.person,
                          color: Color(0XFF3FAD47),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color(0XFF005B51),
                thickness: 1,
                height: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0XFF00473D),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تسجيل حساب جديد',
                          style: TextStyle(
                              fontFamily: 'Dubai',
                              color: Color(0XFFFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.person_add_alt_outlined,
                          color: Color(0XFF3FAD47),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
