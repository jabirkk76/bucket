// ignore_for_file: sort_child_properties_last

import 'dart:developer';

import 'package:bucket/screens/signup_verify/countrry.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../signup_verify/otp.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController phoneController = TextEditingController();
  var code = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bottomSheet = Column(
      children: <Widget>[
        CountryWithPhone(
          phoneController: phoneController,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: "+91${phoneController.text}",
                    verificationCompleted:
                        ((PhoneAuthCredential credential) {}),
                    verificationFailed: (FirebaseAuthException e) {
                      log(e.message!);
                    },
                    codeSent: (String verificationId, int? resendToken) {
                      setState(() {
                        code = verificationId;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Otp sent'),
                        backgroundColor: Colors.green,
                      ));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Time out'),
                        backgroundColor: Colors.red,
                      ));
                    });
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return OneTimePassword(codeFromFirebase: code);
                  }));
                });
              },
              child: const Text(
                'Send OTP',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'ACCOUNT',
                      style: TextStyle(
                        color: Color.fromARGB(255, 70, 70, 70),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search))),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.shopping_cart),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Divider(
                  thickness: 1.8,
                ),
              ),
              ListTile(
                leading: Container(
                  child: const Icon(
                    Icons.person,
                    size: 50,
                  ),
                  height: 130,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 172, 197, 215),
                      shape: BoxShape.circle),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 246, 58, 121)),
                    child: const Text('Sign Up'),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return bottomSheet;
                        },
                      );
                    },
                  ),
                ),
                subtitle: const Text(
                  'View and update your profile details',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 6,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.help_center,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Help Center',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 6,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.language_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Change language',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 241, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.money_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'My Bank Details',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.share_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'My Shared Products',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.payments,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'My Payments',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.wallet_giftcard,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Refer & Earn',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Bucket Credits',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.logo_dev_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Business Logo',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.star_border_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Rate Bucket',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.policy_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Legal & Policies',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 6,
                color: Color.fromARGB(255, 240, 239, 239),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'bucket',
                style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 238, 22, 6),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'version: 13.8.1(430)',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
