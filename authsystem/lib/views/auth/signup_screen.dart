import 'package:authsystem/controllers/all_in_controller.dart';
import 'package:authsystem/views/auth/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'images/signup1.jpg',
                    fit: BoxFit.cover,
                    height: 300,
                    width: 300,
                  ),
                ),
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value1) {
                    if (value1 == null || value1.isEmpty) {
                      return "Please enter your name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 6.6,
                ),
                TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: mobile,
                  decoration: InputDecoration(
                    
                    hintText: "Mobile Number",
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value2) {
                    if (value2 == null || value2.isEmpty) {
                      return "Please enter your mobile number";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 0,
                ),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  obscuringCharacter: ".",
                
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value3) {
                    if (value3 == null || value3.isEmpty) {
                      return "Please enter your Password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 6.6,
                ),
                TextFormField(
                   obscureText: true,
                  obscuringCharacter: ".",
                  controller: confpassword,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value4) {
                    if (value4 == null || value4.isEmpty) {
                      return "Please confirm password";
                    } else if (value4 != password.text) {
                      return "password doesn't match";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo
                        ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("validated");
                        Map usersignupinfo = {
                          'signupname': name.text,
                          'signupnumber': mobile.text,
                          'signuppassword': password.text,
                          'signupconfpass': confpassword.text,
                        };
                        AllInController.signup(usersignupinfo, context);
                        print("$usersignupinfo");

                       
                      } else {
                        print("Not validated");
                      }
                    },
                    child: const Text(
                      "SignUp",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have account ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                          Navigator.pop(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.indigo,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
