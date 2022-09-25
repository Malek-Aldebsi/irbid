import 'package:flutter/material.dart';
import 'package:irbid_app/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

  bool visible = false;
  bool visi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  'تسجيل حساب جديد',
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
          const SizedBox(height: 75),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                onTap: () {
                  setState(() {
                    visible = !visible;
                    visi = false;
                  });
                },
                style: const TextStyle(
                    fontFamily: 'Dubai',
                    color: Color(0XFF001E1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,

                  label: Text(
                    'الاسم الكامل',
                    style: TextStyle(
                        fontFamily: 'Dubai',
                        color: visible
                            ? const Color(0XFF339B7D)
                            : const Color(0XFF9E9E9E),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  border: inputBorder(), //normal border
                  enabledBorder: inputBorder(), //enabled border
                  focusedBorder: focusBorder(),
                  suffixIcon: Icon(
                    Icons.check,
                    color: visible
                        ? const Color(0XFF3FAD47)
                        : const Color(0XFFFFFFFF),
                  ), //focused border
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                onTap: () {
                  setState(() {
                    visi = !visi;
                    visible = false;
                  });
                },
                style: const TextStyle(
                    fontFamily: 'Dubai',
                    color: Color(0XFF001E1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  label: Text(
                    'رقم الهاتف',
                    style: TextStyle(
                        fontFamily: 'Dubai',
                        color: visi
                            ? const Color(0XFF339B7D)
                            : const Color(0XFF9E9E9E),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  border: inputBorder(), //normal border
                  enabledBorder: inputBorder(), //enabled border
                  focusedBorder: focusBorder(),
                  suffixIcon: Icon(
                    Icons.check,
                    color: visi
                        ? const Color(0XFF3FAD47)
                        : const Color(0XFFFFFFFF),
                  ), //focused border
                ),
              ),
            ),
          ),
          const SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        fontFamily: 'Dubai',
                        color: Color(0XFF3FAD47),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Text(
                  '  هل لديك حساب؟',
                  style: TextStyle(
                      fontFamily: 'Dubai',
                      color: Color(0XFF001E1A),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
