import 'dart:ffi';

import 'package:flutter/material.dart';

class LongList extends StatefulWidget {
  const LongList({Key? key, @required this.products}) : super(key: key);
  final List<String>? products;

  @override
  State<LongList> createState() => _LongListState();
}

class _LongListState extends State<LongList> {
  @override
  Widget build(BuildContext context) {
    final List<String> cntry = [
      'Nepal',
      'india',
      'Bhutan',
      'Maldives',
      'pakistaan'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long list example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemCount: widget.products!.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.people),
              title: Text(widget.products![index]),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    widget.products!.removeAt(index);
                    
                  });
                  
                },
                icon: const Icon(Icons.delete),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
            // thickness: 5,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}
