import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListingForm extends StatefulWidget {
  const ListingForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return ListingFormState();
  }
}

class ListingFormState extends State<ListingForm> {
  final _formKey = GlobalKey<FormState>();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(value: "USA", child: Text("USA")),
      DropdownMenuItem(value: "Canada", child: Text("Canada")),
      DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    double bottomPadding = 15;
    return Container(
      margin: const EdgeInsets.all(10),
      child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: Text('Listing Details',
                      style: Theme.of(context).textTheme.headline2),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 3,
                    maxLength: 50,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title *',
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
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Price *',
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
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Description *',
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
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: DropdownButtonFormField(
                    items: dropdownItems,
                    onChanged: null,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Category *',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: DropdownButtonFormField(
                    items: dropdownItems,
                    onChanged: null,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Condition *',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
