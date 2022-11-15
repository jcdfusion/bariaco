import 'package:bariaco/src/features/account/widgets/account_profile_name_form.dart';
import 'package:flutter/material.dart';
import '../../../common_widgets/policy_footer.dart';
import '../../home/widgets/home_drawer.dart';

class ProfileNameChangeScreen extends StatelessWidget {
  const ProfileNameChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop()),
        title: const SizedBox(
          height: 20,
          child: Center(
              child: Image(
                  image: AssetImage('lib/assets/images/mercado_logo.png'))),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: const [
              ProfileNameForm()
            ],
          )),
      bottomNavigationBar: const PolicyFooter(),
    );
  }
}
