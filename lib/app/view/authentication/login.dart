import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController(); 
  final TextEditingController pwdController = TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Log in to Scale',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 35,
            ),
            ),

            SizedBox(height: 30),



            // FORM START            
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  ),

                  TextFormField(
                    style: TextStyle(color:Colors.white),
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'darling@gmail.com',
                      hintStyle: TextStyle(color: Colors.grey),  
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text('Password',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  ),

                  TextFormField(
                    style: TextStyle(color:Colors.white),
                    controller: pwdController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Your password',
                      hintStyle: TextStyle(color: Colors.grey),  
                    ),
                  ),

                  SizedBox(height: 18),

                  TextButton( onPressed: (){},
                    child: Text('Forgot Password?',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 15,),
                    ),
                  ),


                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: ElevatedButton(onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )
                          ),
                          child: Text('Login')
                          ),
                        ),
                        ),

                    ],
                  )
                ],
              ),
            ),
            // FORM END
            SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child: Divider(thickness: 1, color: Colors.grey)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("OR", style: TextStyle(color: Colors.white ,fontSize: 16,)),
              ),
              Expanded(child: Divider(thickness: 1, color: Colors.grey)),
            ],
            ),

          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black26,
                    foregroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.g_mobiledata,
                      size: 50,
                      color: Colors.grey,
                      ),
                      SizedBox(width: 30),
                      Text('Continue with google')
                    ],
                  )),
                ),
              )
            ],
          ),

          SizedBox(height: 90),
          Center(
            child: Column(
              children: [
                Text('get started and sign in now to be a better and smarter version of you with our app ',
                textAlign: TextAlign.center,
                style: TextStyle(color: const Color.fromARGB(172, 158, 158, 158),
                
                ),
                ),
              ],
            ),
          )
          ],
        ),
      ),

    
    );
  }
}