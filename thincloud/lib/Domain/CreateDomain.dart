// main.dart
// ignore_for_file: unused_element, file_names, library_private_types_in_public_api, non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thincloud/Constants.dart';

class CreateDomain extends StatefulWidget {
  const CreateDomain({Key? key}) : super(key: key);

  @override
  _CreateDomainState createState() => _CreateDomainState();
}

class _CreateDomainState extends State<CreateDomain> {
  // text fields' controllers
  final TextEditingController _forestnameController = TextEditingController();
  final TextEditingController _DomainnameController = TextEditingController();
  final TextEditingController _DepartmentsnameController =
      TextEditingController();

  final CollectionReference _domains = FirebaseFirestore.instance
      .collection(useruid)
      .doc(useruid)
      .collection('Domains');

  Future<void> _createOrUpdate([DocumentSnapshot? documentSnapshot]) async {
    String action = 'create';
    if (documentSnapshot != null) {
      action = 'update';
      _forestnameController.text = documentSnapshot['forestname'];
      _DomainnameController.text = documentSnapshot['Domainname'];
      _DepartmentsnameController.text = documentSnapshot['Departmentsname'];
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
                  controller: _forestnameController,
                  decoration: const InputDecoration(labelText: 'forestname'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _DomainnameController,
                  decoration: const InputDecoration(labelText: 'Domainname'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _DepartmentsnameController,
                  decoration:
                      const InputDecoration(labelText: 'Departmentsname'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text(action == 'create' ? 'Create' : 'Update'),
                  onPressed: () async {
                    final String forestnameController =
                        _forestnameController.text;
                    final String DomainnameController =
                        _DomainnameController.text;
                    final String DepartmentsnameController =
                        _DepartmentsnameController.text;
                    //double.tryParse(_puanController.text);
                    if (forestnameController != '') {
                      if (action == 'create') {
                        await _domains.add({
                          "forestname": forestnameController,
                          "Domainname": DomainnameController,
                          "Departmentsname": DepartmentsnameController
                        });
                      }

                      if (action == 'update') {
                        await _domains.doc(documentSnapshot!.id).update({
                          "forestname": forestnameController,
                          "Domainname": DomainnameController,
                          "Departmentsname": DepartmentsnameController
                        });
                      }

                      _forestnameController.text = '';
                      _DomainnameController.text = '';
                      _DepartmentsnameController.text = '';
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
    await _domains.doc(productId).delete();

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Domain silindi.')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Domain'),
        backgroundColor: const Color.fromARGB(
          255,
          132,
          183,
          220,
        ),
      ),
      body: StreamBuilder(
        stream: _domains.snapshots(),
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
                    title: Text(documentSnapshot['forestname']),
                    subtitle: Column(
                      children: [
                        Text(documentSnapshot['Domainname']),
                        Text(documentSnapshot['Departmentsname']),
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
