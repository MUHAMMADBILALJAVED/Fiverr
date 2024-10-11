import 'package:flutter/material.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            backgroundColor: Colors.white70,
            title: const Text('Manage orders', style: TextStyle(fontWeight: FontWeight.bold),),
            elevation: 40,
            titleSpacing: 20,
            actions: const [
              Icon(Icons.notifications_none),
              SizedBox(width: 20),
              Icon(Icons.filter_list),
              SizedBox(width: 20),
            ],
            bottom: const TabBar(
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              labelColor: Colors.green,
              indicatorColor: Colors.green, 
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              tabs: [
              Tab(
                text: 'Completed (12)',
              ),
              Tab(
                text: 'Cancelled (3)',
              ),
              Tab(
                text: 'Incompleted (7)',
              ),
            ]),
          ),

          body: TabBarView(children: [
            _buildOrderList1(),
            _buildOrderList2(),
            _buildOrderList3(),
          ]),

        ),
      );
}


Widget _buildOrderList1() {
  return ListView.builder(
    itemCount: 12, // Replace with actual order count
    itemBuilder: (context, index) {
      return _buildOrderItem1();
    },
  );
}


Widget _buildOrderList2() {
  return ListView.builder(
    itemCount: 3, // Replace with actual order count
    itemBuilder: (context, index) {
      return _buildOrderItem2();
    },
  );
}


Widget _buildOrderList3() {
  return ListView.builder(
    itemCount: 7, // Replace with actual order count
    itemBuilder: (context, index) {
      return _buildOrderItem3();
    },
  );
}



Widget _buildOrderItem1() {
  return Card(
    shadowColor: Colors.grey.shade900,
    margin: const EdgeInsets.all(16),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/GigImage1.jpg', // Replace with actual image
                width: 84,
                height: 84,
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$300',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Design kids and adults worksheets, activities books for',
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Row(
            children: [
              const Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/UserImage7.jpg'),
                      maxRadius: 15,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Ayellinf1994',
                    ),
                  ],
                ),
              ),
              Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color.fromARGB(255, 207, 247, 210),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'COMPLETED',
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 109, 25),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const Text('Sep 4, 2022'),
        ],
      ),
    ),
  );
}


Widget _buildOrderItem2() {
  return Card(
    shadowColor: Colors.grey.shade900,
    margin: const EdgeInsets.all(16),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/GigImage2.jpg', // Replace with actual image
                width: 84,
                height: 84,
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$150',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Retype and convert scanned documents or pdf into word.',
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Row(
            children: [
              const Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/UserImage9.jpg'),
                      maxRadius: 15,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Ronaldo123',
                    ),
                  ],
                ),
              ),
              Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color.fromARGB(144, 58, 57, 57),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'COMPLETED',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const Text(
            'Aug 27, 2022',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}


Widget _buildOrderItem3() {
  return Card(
    shadowColor: Colors.grey.shade900,
    margin: const EdgeInsets.all(16),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/GigImage3.jpg', // Replace with actual image
                width: 84,
                height: 84,
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$150',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Retype and convert scanned documents or pdf into word.',
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Row(
            children: [
              const Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/UserImage1.jpg'),
                      maxRadius: 15,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Alpha2001',
                    ),
                  ],
                ),
              ),
              Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color.fromARGB(255, 243, 202, 209),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'INCOMPLETED',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const Text(
            'Oct 15, 2024',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
