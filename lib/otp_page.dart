import 'package:flutter/material.dart';
import 'package:irbid_app/login_page.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        color: const Color(0XFFC2C2C2).withOpacity(0.6),
        width: 1,
      ),
    );
  }

  OutlineInputBorder focusBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        color: const Color(0XFFC2C2C2).withOpacity(0.6),
        width: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/signup.png'), fit: BoxFit.fill),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: const Image(
                    image: AssetImage('images/logo.png'),
                    height: 60,
                  ),
                ),
                const Text(
                  'رمز التحقق',
                  style: TextStyle(
                      fontFamily: 'Dubai',
                      color: Color(0XFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0XFF71CCA2),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 30),
            child: Image.asset(
              'images/otp.png',
              height: 300,
            ),
          ),
          Text(
            'رمز التحقق',
            style: TextStyle(
                fontFamily: 'Dubai',
                color: Color(0XFF001E1A),
                fontSize: 30,
                fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
            child: Text(
              'لقد تم إرسال رمز التحقق المكون من 6 رموز على رقم الهاتف 0776052348',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Dubai',
                  color: Color(0XFF001E1A),
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFF001E1A),
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      border: inputBorder(), //normal border
                      enabledBorder: inputBorder(), //enabled border
                      focusedBorder: focusBorder(),
                      //focused border
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFF001E1A),
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      border: inputBorder(), //normal border
                      enabledBorder: inputBorder(), //enabled border
                      focusedBorder: focusBorder(),
                      //focused border
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFF001E1A),
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      border: inputBorder(), //normal border
                      enabledBorder: inputBorder(), //enabled border
                      focusedBorder: focusBorder(),
                      //focused border
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFF001E1A),
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      border: inputBorder(), //normal border
                      enabledBorder: inputBorder(), //enabled border
                      focusedBorder: focusBorder(),
                      //focused border
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFF001E1A),
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      border: inputBorder(), //normal border
                      enabledBorder: inputBorder(), //enabled border
                      focusedBorder: focusBorder(),
                      //focused border
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFF001E1A),
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      border: inputBorder(), //normal border
                      enabledBorder: inputBorder(), //enabled border
                      focusedBorder: focusBorder(),
                      //focused border
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0XFF878787),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'متابعة',
                    style: TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFFFFFFFF),
                        fontSize: 21,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
