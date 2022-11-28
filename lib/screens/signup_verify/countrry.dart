// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryWithPhone extends StatefulWidget {
  const CountryWithPhone({Key? key, required this.phoneController})
      : super(key: key);
  final TextEditingController phoneController;

  @override
  State<CountryWithPhone> createState() => _CountryWithPhoneState();
}

class _CountryWithPhoneState extends State<CountryWithPhone> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            SizedBox(
              height: 70,
              child: IntlPhoneField(
                controller: widget.phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
