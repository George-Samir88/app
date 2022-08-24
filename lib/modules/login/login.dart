import 'dart:math';

import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formLoginKey  = GlobalKey<FormState>();
  var formSignInKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var firstNameController = TextEditingController();
  var emailSignUpController = TextEditingController();
  var passwordSignUpController  = TextEditingController();
  var passwordSignUpConfirmController  = TextEditingController();
  var passwordLoginController  = TextEditingController();
  var lastNameController  = TextEditingController();
  bool isLoginSelected  = true;
  bool isPasswordShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children:  [
                    Container(
                      alignment: Alignment.topRight,
                      child: const Image(
                        image: AssetImage(
                            'assets/images/startright.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Image(
                        image: AssetImage(
                          'assets/images/splashScreen.png'
                        ),

                    ),
                    const SizedBox(
                      height: 70.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: min(90, 86),
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: (){
                                  setState(() {
                                    isLoginSelected = false;
                                  });
                                },
                                child: Text(
                                  'Sign Up',
                                  style:  TextStyle(
                                    color: isLoginSelected ? Colors.grey : Colors.green,
                                    fontSize: isLoginSelected ? 18.0 : 20.0,
                                    fontWeight: isLoginSelected ? FontWeight.w500 : FontWeight.bold ,
                                  ),
                                ),
                              ),
                              isLoginSelected ? Container() : Container(
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.rectangle,

                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                        ),
                        SizedBox(
                          width: min(80, 67),
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: (){
                                  setState(() {
                                    isLoginSelected = true;

                                  });
                                },
                                child:  Text(
                                  'Login',
                                  style:  TextStyle(
                                    color: isLoginSelected ?  Colors.green : Colors.grey,
                                    fontSize: isLoginSelected ? 20.0 : 18.0,
                                    fontWeight: isLoginSelected ? FontWeight.bold : FontWeight.w500,
                                  ),
                                ),
                              ),
                              isLoginSelected ? Container(
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.rectangle,

                                ),
                              ) : Container(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    isLoginSelected ?
                    Form(
                      key: formLoginKey,
                      child: Column(
                        children: [
                          Container(
                            padding:const  EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child:  TextFormField(
                              validator:(value){
                                if(value!.isEmpty){
                                  return 'Email must not be empty';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration:const   InputDecoration(
                                prefixIcon:  Icon(
                                    Icons.email_outlined
                                ),
                                labelText: 'Email Address',
                                border:  OutlineInputBorder(),
                              ),
                              controller: emailController,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            padding:const  EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: TextFormField(
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Password must not be empty ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                prefixIcon:const   Icon(
                                  Icons.lock,
                                ),
                                suffixIcon: isPasswordShow ?IconButton(
                                    icon: const Icon(
                                      Icons.visibility_off,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        isPasswordShow = !isPasswordShow;
                                      });
                                    }) : IconButton(
                                  onPressed:(){
                                    setState(() {
                                      isPasswordShow = !isPasswordShow;
                                    });
                                  },
                                  icon: const Icon(
                                      Icons.remove_red_eye
                                  ),
                                ) ,
                                labelText: 'Password',
                                border: const OutlineInputBorder(
                                ),
                              ),
                              obscureText: isPasswordShow ? false : true,
                              controller: passwordLoginController,
                            ),
                          ),
                        ],
                      ),
                    ):  Form(
                      key: formSignInKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:const  EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  child:  TextFormField(
                                    validator:(value){
                                      if(value!.isEmpty){
                                        return 'First Name must not be empty';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration:const   InputDecoration(
                                      labelText: 'First Name',
                                      border:  OutlineInputBorder(),
                                    ),
                                    controller: firstNameController,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding:const  EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  child: TextFormField(
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Last Name must not be empty ';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      labelText: 'Last Name',
                                      border:  OutlineInputBorder(),
                                    ),
                                    controller: lastNameController,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            padding:const  EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: TextFormField(
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Last Name must not be empty ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                labelText: 'Email Address',
                                border:  OutlineInputBorder(),
                              ),
                              controller: emailSignUpController,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            padding:const  EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: TextFormField(
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Password must not be empty';
                                }
                                if(passwordSignUpController.text!= passwordSignUpConfirmController.text){
                                  return 'Password not matched';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                prefixIcon:const   Icon(
                                  Icons.lock,
                                ),
                                suffixIcon: isPasswordShow ?IconButton(
                                    icon: const Icon(
                                      Icons.visibility_off,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        isPasswordShow = !isPasswordShow;
                                      });
                                    }) : IconButton(
                                  onPressed:(){
                                    setState(() {
                                      isPasswordShow = !isPasswordShow;
                                    });
                                  },
                                  icon: const Icon(
                                      Icons.remove_red_eye
                                  ),
                                ) ,
                                labelText: 'Password',
                                border: const OutlineInputBorder(
                                ),
                              ),
                              obscureText: isPasswordShow ? false : true,
                              controller: passwordSignUpController,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            padding:const  EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: TextFormField(
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Password must not be empty';
                                }
                                if(passwordSignUpController.text!= passwordSignUpConfirmController.text){
                                  return 'Password not matched';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                prefixIcon:const   Icon(
                                  Icons.lock,
                                ),
                                suffixIcon: isPasswordShow ?IconButton(
                                    icon: const Icon(
                                      Icons.visibility_off,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        isPasswordShow = !isPasswordShow;
                                      });
                                    }) : IconButton(
                                  onPressed:(){
                                    setState(() {
                                      isPasswordShow = !isPasswordShow;
                                    });
                                  },
                                  icon: const Icon(
                                      Icons.remove_red_eye
                                  ),
                                ) ,
                                labelText: 'Confirm Password',
                                border: const OutlineInputBorder(
                                ),
                              ),
                              obscureText: isPasswordShow ? false : true,
                              controller: passwordSignUpConfirmController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding:const  EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      width: double.infinity,
                      child: isLoginSelected ? MaterialButton(
                        color: Colors.green,
                        height: 40,
                        onPressed: (){
                          if(formLoginKey.currentState!.validate()){

                          }
                      },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ) : MaterialButton(
                        color: Colors.green,
                        height: 40,
                        onPressed: (){
                          if(formSignInKey.currentState!.validate()){

                          }
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    const  SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1.0,
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                              'or continue with',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              height: 1.0,
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                         CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15.0,
                          child: Image(
                            image: AssetImage('assets/images/Google.png'),
                          ),
                        ),
                         SizedBox(
                          width: 20.0,
                        ),
                         CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15.0,
                          child: Image(
                            image: AssetImage('assets/images/facebook.png'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child:const  Image(image:
                      AssetImage(
                        'assets/images/bottomstart.png'
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
