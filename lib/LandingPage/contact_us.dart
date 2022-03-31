import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/shims/dart_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);
  final html = '''
      <a data-tf-popup="eXAqppuD" data-tf-iframe-props="title=Contact Us Form" data-tf-medium="snippet" style="all:unset;font-family:Helvetica,Arial,sans-serif;display:inline-block;max-width:100%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;background-color:#0445AF;color:#FFFFFF;font-size:20px;border-radius:50px;padding:0 33px;font-weight:bold;height:100px;cursor:pointer;line-height:50px;text-align:center;margin:0;text-decoration:none;">
      Get In Touch
      </a>
      <script src="//embed.typeform.com/next/embed.js"></script>
      ''';
  final htmlData = '''
      <a href="" data-tf-popup="eXAqppuD" data-tf-iframe-props="title=Contact Us Form" data-tf-medium="snippet">
      Hello
      </a>
      <script src="//embed.typeform.com/next/embed.js"></script>
      ''';

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
          Expanded(
              child: Center(
            child: ElevatedButton(
              child: const Text("Click me!"),
              onPressed: () async {
                var _url = "https://96umhjfmrv5.typeform.com/to/eXAqppuD";
                await canLaunch(_url)
                    ? await launch(_url)
                    : throw 'Could not launch $_url';
              },
            ),
          )),
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
