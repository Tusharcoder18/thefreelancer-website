import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.875,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth * 0.1,
          ),
          const Expanded(
            child: ContactUsForm(),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/contactus.png',
              // height: screenWidth * 0.5,
              // width: screenWidth * 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class ContactUsForm extends StatefulWidget {
  const ContactUsForm({Key? key}) : super(key: key);

  @override
  State<ContactUsForm> createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
  final _formKey = GlobalKey<FormState>();
  final _controllerName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Contact Us",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          textBox("Name", _controllerName),
          const SizedBox(
            height: 12,
          ),
          textBox("Email", _controllerEmail),
          const SizedBox(
            height: 12,
          ),
          textBox("Message", _controllerMessage),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint("Validation Successful");
              }
            },
            child: Text(
              "Submit",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

Widget textBox(String title, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title),
      const SizedBox(
        height: 12,
      ),
      TextFormField(
        maxLines: title == 'Message' ? 5 : 1,
        controller: controller,
        obscureText: title == "Password" ? true : false,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: 'Enter $title',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          } else if (title == "Name") {
            if (value.contains(RegExp(r'[0-9]'))) {
              return 'Name should not have numbers!';
            }
          } else if (title == "Email") {
            if (!value.contains('@')) {
              return 'Invalid email';
            }
          }
          return null;
        },
      ),
    ],
  );
}
