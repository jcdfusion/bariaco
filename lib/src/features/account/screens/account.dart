import 'package:flutter/material.dart';
import '../../../common_widgets/policy_footer.dart';
import '../../sell/widgets/start_selling_box.dart';
import '../widgets/account_header.dart';
import '../widgets/account_items_saved.dart';
import '../widgets/account_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Icon(Icons.person), Text('Profile')],
                )),
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.monetization_on),
                    Text('Selling')
                  ],
                )),
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Icon(Icons.favorite), Text('Saved')],
                )),
              ],
            ),
          ),
          body: TabBarView(children: [
            Column(
              children: const [ProfileHeader(), ProfileBody()],
            ),
            Column(
              children: const [StartSellingBox()],
            ),
            Column(
              children: const [AccountItemsSaved()],
            ),
          ]),
          bottomNavigationBar: const PolicyFooter(),
        ));
  }
}
