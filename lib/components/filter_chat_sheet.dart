import 'package:flutter/material.dart';

class FilterChatSheet extends StatefulWidget {
  const FilterChatSheet({super.key});

  @override
  State<FilterChatSheet> createState() => _FilterChatSheetState();
}

class _FilterChatSheetState extends State<FilterChatSheet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Filter inbox'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Inbox',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          _buildListTile(0, Icons.inbox, 'All', true),
          _buildListTile(1, Icons.mail_outline, 'Unread', false),
          _buildListTile(2, Icons.star_border, 'Starred', false),
          _buildListTile(3, Icons.archive_outlined, 'Archived', false),
          _buildListTile(4, Icons.block, 'Spam', false),
          _buildListTile(5, Icons.add, 'Custom offers', false),
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Labels',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          _buildListTile(6, Icons.label_outline, 'Follow-up', false),
          _buildListTile(7, Icons.label_outline, 'Nudge', false),
        ],
      ),
    );
  }

  Widget _buildListTile(int index, IconData icon, String title,  bool isSelected) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: isSelected ? const Icon(Icons.check, color: Colors.green) : null,
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}