import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import the Firestore package
import '../components/my_appbar.dart';

class ListenPage extends StatelessWidget {
  const ListenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        text: "Topics",
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Topics').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Error fetching data');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          // Data is available, process it
          final topics = snapshot.data?.docs ?? [];

          return ListView.builder(
            itemCount: topics.length,
            itemBuilder: (context, index) {
              final topicData = topics[index].data() as Map<String, dynamic>;
              final topicName = topicData['Name'] ?? 'No Name';
              // You can customize the widget to display each topic
              return ListTile(
                title: Text(topicName),
              );
            },
          );
        },
      ),
    );
  }
}
