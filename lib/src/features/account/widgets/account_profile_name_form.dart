import 'package:flutter/material.dart';

// Create a Form widget.
class ProfileNameForm extends StatefulWidget {
  const ProfileNameForm({super.key});

  @override
  ProfileNameFormState createState() {
    return ProfileNameFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class ProfileNameFormState extends State<ProfileNameForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    double bottomPadding = 15;
    return Container(
      margin: const EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: bottomPadding),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name *',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              width: fillParentWidth,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Update Name',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
