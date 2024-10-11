import 'package:fiverr_app/pages/earning_page.dart';
import 'package:fiverr_app/pages/messege_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR START FROM HERE
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          // Sliver App bar
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 20,
            pinned: true,
            floating: false,
            expandedHeight: 80,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(10),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Hi Bilal Javed,\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                      ),
                      children: [
                        TextSpan(
                          text: 'Welcome Back',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      'Profile.jpeg',
                      fit: BoxFit.fill,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Sliver Items

          // FIRST SLIVER LIST
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(2, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatSection(
                        title: 'My Level',
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const Icon(Icons.star, color: Colors.grey),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'Level 0',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      _buildStatSection(
                        title: 'Success Score',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            LinearProgressIndicator(
                              value: 0.4, // Example value
                              backgroundColor: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                              minHeight: 8.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatSection(
                        title: 'Rating',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '4.0',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            LinearProgressIndicator(
                              value: 0.7, // Example value
                              backgroundColor: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.green),
                              minHeight: 8.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      _buildStatSection(
                        title: 'Response Rate',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '50%',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            LinearProgressIndicator(
                              value: 0.5, // Example value
                              backgroundColor: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.black54),
                              minHeight: 8.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  _buildStatRow(
                    title: 'Orders',
                    value: '40 / 5',
                  ),
                  const Divider(),
                  _buildStatRow(
                    title: 'Unique Clients',
                    value: '7 / 3',
                  ),
                  const Divider(),
                  _buildStatRow(
                    title: 'Earnings',
                    value: '\$4,595.96 / \$400',
                    valueStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // TITLE AND ONTAP ACTION
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Column(
                children: [
                  // 1st Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Earnings',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const EarningPage()),
                          );
                        },
                        child: const Text(
                          'Details',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // SECOND SLIVER LIST
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EarningPage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(2, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Available for Withdrawal',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$0',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Earning in September',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$0',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Avg. Selling Price',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$149.27',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Active Order',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                RichText(
                                  text: const TextSpan(
                                    text: '0 ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '(\$0)',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Payments being cleared',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$0',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Cancelled Orders',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                RichText(
                                  text: const TextSpan(
                                    text: '0 ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '(-\$0)',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),


          // TITLE 
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(left: 25),
              child: const Text(
                'To-Dos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // THIRD SLIVER LIST
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MessegePage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(2, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '0 unread messeges',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Kick back and relax.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color: const Color.fromARGB(255, 227, 225, 225),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),


          // TITLE 
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(left: 25),
              child: const Text(
                'My Gigs',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),


          // FOURTH SLIVER LIST
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(2, 5),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  // 1st Row
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last 7 days',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Statistics',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 2nd Row
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Impressions',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '1.5k',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 3rd Row
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Clicks',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '576',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget _buildStatSection({
  required String title,
  String? value,
  double progressValue = 0.0,
  Widget? child,
}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          if (value != null)
            Text(
              value,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            )
          else if (child != null)
            child,
          if (progressValue > 0)
            SizedBox(
              height: 8.0,
              child: LinearProgressIndicator(
                value: progressValue,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
        ],
      ),
    ),
  );
}

Widget _buildStatRow({
  required String title,
  required String value,
  TextStyle? valueStyle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: valueStyle ??
              const TextStyle(
                fontSize: 16.0,
              ),
        ),
      ],
    ),
  );
}
