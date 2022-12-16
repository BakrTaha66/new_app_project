import 'package:flutter/material.dart';
import 'package:new_app_project/state/cart.dart';
import 'package:new_app_project/state/counter.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Provider(${context.watch<Count>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<Cart>().count}'),
            Text('${context.watch<Cart>().cart}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('addItem_floatingActionButtom'),
        onPressed: () => context.read<Cart>().addItem('Itel'),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
