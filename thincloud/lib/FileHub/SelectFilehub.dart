// main.dart
// ignore_for_file: unused_element, use_build_context_synchronously, file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thincloud/Constants.dart';

class SelectFilehub extends StatefulWidget {
  const SelectFilehub({Key? key}) : super(key: key);

  @override
  _SelectFilehubState createState() => _SelectFilehubState();
}

class _SelectFilehubState extends State<SelectFilehub> {
  // text fields' controllers
  final TextEditingController _filehubnameController = TextEditingController();
  final TextEditingController _filehubsizeController = TextEditingController();
  final TextEditingController _filehubbackupController =
      TextEditingController();

  final CollectionReference _filehubs = FirebaseFirestore.instance
      .collection(useruid)
      .doc(useruid)
      .collection('Filehub');
  Future<void> _createOrUpdate([DocumentSnapshot? documentSnapshot]) async {
    String action = 'create';
    if (documentSnapshot != null) {
      action = 'update';
      _filehubnameController.text = documentSnapshot['filehubname'];
      _filehubsizeController.text = documentSnapshot['filehubsize'];
      _filehubbackupController.text = documentSnapshot['filehubbackup'];
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _filehubnameController,
                  decoration: const InputDecoration(labelText: 'filehubname'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _filehubsizeController,
                  decoration: const InputDecoration(labelText: 'filehubsize'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _filehubbackupController,
                  decoration: const InputDecoration(labelText: 'filehubbackup'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text(action == 'create' ? 'Create' : 'Update'),
                  onPressed: () async {
                    final String filehubnameController =
                        _filehubnameController.text;
                    final String filehubsizeController =
                        _filehubsizeController.text;
                    final String filehubbackupController =
                        _filehubbackupController.text;
                    //double.tryParse(_puanController.text);
                    if (filehubnameController != '') {
                      if (action == 'create') {
                        await _filehubs.add({
                          "filehubname": filehubnameController,
                          "filehubsize": filehubsizeController,
                          "filehubbackup": filehubbackupController
                        });
                      }

                      if (action == 'update') {
                        await _filehubs.doc(documentSnapshot!.id).update({
                          "filehubname": filehubnameController,
                          "filehubsize": filehubsizeController,
                          "filehubbackup": filehubbackupController
                        });
                      }

                      _filehubnameController.text = '';
                      _filehubsizeController.text = '';
                      _filehubbackupController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _deleteProduct(String productId) async {
    await _filehubs.doc(productId).delete();

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Filehub silindi.')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Filehub'),
        backgroundColor: const Color.fromARGB(
          255,
          132,
          183,
          220,
        ),
      ),
      body: StreamBuilder(
        stream: _filehubs.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(documentSnapshot['filehubname']),
                    subtitle: Column(
                      children: [
                        Text(documentSnapshot['filehubsize']),
                        Text(documentSnapshot['filehubbackup']),
                      ],
                    ),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                _deleteProduct(documentSnapshot.id);
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      /*   floatingActionButton: FloatingActionButton(
        onPressed: () => _createOrUpdate(),
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
