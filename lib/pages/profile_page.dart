import 'package:fiverr_app/account/login_page.dart';
import 'package:fiverr_app/pages/earning_page.dart';
import 'package:fiverr_app/service/firebase_authentication.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isSellerModeEnabled = true;

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuthentication();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          Container(
            // color: Colors.yellow,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            'assets/Profile.jpeg') // Replace with user image URL
                        ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'M. Bilal Javed',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Personal balance: \$0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(2, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Seller mode',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            Switch(
                              value: _isSellerModeEnabled,
                              onChanged: (value) {
                                setState(() {
                                  _isSellerModeEnabled = value;
                                });
                              },
                              activeColor: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Selling options list
          Container(
            color: const Color.fromARGB(249, 247, 245, 245),
            margin: const EdgeInsets.only(top: 150),
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 12, top: 15, bottom: 15),
                  child: const Text(
                    'Sellings',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                _buildListTile(
                  icon: Icons.attach_money,
                  title: 'Earnings',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EarningPage()),
                    );
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.edit_document,
                  title: 'Custom Offer Templates',
                  onTap: () {
                    // Handle templates navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.share_outlined,
                  title: 'Share Gigs',
                  onTap: () {
                    // Handle gigs navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.person,
                  title: 'My Profile',
                  onTap: () {
                    // Handle profile navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.list_alt_outlined,
                  title: 'Manage Gigs',
                  onTap: () {
                    // Handle manage gigs navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.calendar_today,
                  title: 'Availability',
                  onTap: () {
                    // Handle availability navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.person_add,
                  title: 'Invite Friends',
                  onTap: () {
                    // Handle invite navigation
                  },
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 12, top: 15, bottom: 15),
                  child: const Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                _buildListTile(
                  icon: Icons.person_off,
                  title: 'Account',
                  onTap: () {
                    // Handle account navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.slideshow_rounded,
                  title: 'Preferences',
                  onTap: () {
                    // Handle preferences navigation
                  },
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 12, top: 15, bottom: 15),
                  child: const Text(
                    'Resources',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                _buildListTile(
                  icon: Icons.headset,
                  title: 'Support',
                  onTap: () {
                    // Handle support navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.people,
                  title: 'Community and Legal',
                  onTap: () {
                    // Handle community navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.thumbs_up_down,
                  title: 'Feedback',
                  onTap: () {
                    // Handle Feedback navigation
                  },
                ),
                const Divider(
                  color: Color.fromARGB(111, 192, 191, 191),
                ),
                _buildListTile(
                  icon: Icons.thumbs_up_down,
                  title: 'Logout',
                  onTap: () async {
                    // Handle logout
                    await _auth.signOut();
                    gotologin(context);
                  },
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 12, top: 15, bottom: 15),
                  child: const Text(
                    '',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build list tiles with icons and titles
  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Color.fromARGB(111, 192, 191, 191),
      ),
      onTap: onTap,
    );
  }
}

gotologin(BuildContext context) => Navigator.push(
context, MaterialPageRoute(builder: (context) => const LoginScreen()));