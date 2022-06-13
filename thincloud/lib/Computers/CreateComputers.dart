// main.dart
// ignore_for_file: unused_element, file_names, library_private_types_in_public_api, non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thincloud/Constants.dart';

class CreateComputers extends StatefulWidget {
  const CreateComputers({Key? key}) : super(key: key);

  @override
  _CreateComputersState createState() => _CreateComputersState();
}

class _CreateComputersState extends State<CreateComputers> {
  // text fields' controllers
  final TextEditingController _chooseramController = TextEditingController();
  final TextEditingController _processorController = TextEditingController();
  final TextEditingController _storageController = TextEditingController();

  final CollectionReference _Computerss = FirebaseFirestore.instance
      .collection(useruid)
      .doc(useruid)
      .collection('Computers');

  Future<void> _createOrUpdate([DocumentSnapshot? documentSnapshot]) async {
    String action = 'create';
    if (documentSnapshot != null) {
      action = 'update';
      _chooseramController.text = documentSnapshot['chooseram'];
      _processorController.text = documentSnapshot['processor'];
      _storageController.text = documentSnapshot['storage'];
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
                  controller: _chooseramController,
                  decoration: const InputDecoration(labelText: 'chooseram'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _processorController,
                  decoration: const InputDecoration(labelText: 'processor'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _storageController,
                  decoration: const InputDecoration(labelText: 'storage'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text(action == 'create' ? 'Create' : 'Update'),
                  onPressed: () async {
                    final String chooseramController =
                        _chooseramController.text;
                    final String processorController =
                        _processorController.text;
                    final String storageController = _storageController.text;
                    //double.tryParse(_puanController.text);
                    if (chooseramController != '') {
                      if (action == 'create') {
                        await _Computerss.add({
                          "chooseram": chooseramController,
                          "processor": processorController,
                          "storage": storageController
                        });
                      }

                      if (action == 'update') {
                        await _Computerss.doc(documentSnapshot!.id).update({
                          "chooseram": chooseramController,
                          "processor": processorController,
                          "storage": storageController
                        });
                      }

                      _chooseramController.text = '';
                      _processorController.text = '';
                      _storageController.text = '';
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
    await _Computerss.doc(productId).delete();

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Computers deleted.')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Computers'),
        backgroundColor: const Color.fromARGB(
          255,
          132,
          183,
          220,
        ),
      ),
      body: StreamBuilder(
        stream: _Computerss.snapshots(),
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
                    title: Text(documentSnapshot['chooseram']),
                    subtitle: Column(
                      children: [
                        Text(documentSnapshot['processor']),
                        Text(documentSnapshot['storage']),
                      ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _createOrUpdate(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
