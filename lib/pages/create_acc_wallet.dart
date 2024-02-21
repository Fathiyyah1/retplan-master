import 'package:flutter/material.dart';
import 'package:retplan/pages/Utilites/colors.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  List<Wallet> wallets = [];
  TextEditingController _nameController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  void addWallet(Wallet wallet) {
    setState(() {
      wallets.add(wallet);
    });
  }

  void deleteWallet(int index) {
    setState(() {
      wallets.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsDesign.mainColor,
        title: Text('Wallets'),
      ),
      body: ListView.builder(
        itemCount: wallets.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(wallets[index].id.toString()),
            onDismissed: (direction) {
              deleteWallet(index);
            },
            background: Container(
              color: Color.fromARGB(255, 198, 47, 37),
              child: Icon(Icons.delete),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 16.0),
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpensesPage(wallet: wallets[index]),
                  ),
                );
              },
              title: Text(wallets[index].name),
              subtitle: Text(wallets[index].description),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsDesign.mainColor,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AddWalletDialog(
              onWalletAdded: addWallet,
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Wallet {
  final int id;
  final String name;
  final String description;
  // final

  Wallet({required this.id, required this.name, required this.description});
}

class AddWalletDialog extends StatefulWidget {
  final Function(Wallet) onWalletAdded;

  const AddWalletDialog({required this.onWalletAdded});

  @override
  _AddWalletDialogState createState() => _AddWalletDialogState();
}

class _AddWalletDialogState extends State<AddWalletDialog> {
  String? walletType;
  String? currency;
  String name = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Create Wallet'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownButtonFormField<String>(
            value: walletType,
            decoration: InputDecoration(labelText: 'Wallet Type'),
            items: [
              DropdownMenuItem(
                  child: Text('Bank Account'), value: 'Bank Account'),
              DropdownMenuItem(child: Text('Saving'), value: 'Saving'),
              DropdownMenuItem(child: Text('Business'), value: 'Business'),
              DropdownMenuItem(child: Text('Investment'), value: 'Investment'),
              DropdownMenuItem(
                  child: Text('Credit Card'), value: 'Credit Card'),
              DropdownMenuItem(child: Text('Charity'), value: 'Charity'),
              DropdownMenuItem(child: Text('Others'), value: 'Others'),
            ],
            onChanged: (value) {
              setState(() {
                walletType = value;
              });
            },
          ),
          DropdownButtonFormField<String>(
            value: currency,
            decoration: InputDecoration(labelText: 'Currency'),
            items: [
              DropdownMenuItem(child: Text('SR'), value: 'SR'),
              DropdownMenuItem(child: Text('\$'), value: '\$'),
            ],
            onChanged: (value) {
              setState(() {
                currency = value;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Description'),
            onChanged: (value) {
              setState(() {
                description = value;
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            int id = DateTime.now().millisecondsSinceEpoch;
            Wallet wallet = Wallet(
              id: id,
              name: name,
              description: description,
            );
            widget.onWalletAdded(wallet);
            Navigator.of(context).pop();
          },
          child: Text('Create'),
        ),
      ],
    );
  }
}

class ExpensesPage extends StatelessWidget {
  final Wallet wallet;

  const ExpensesPage({required this.wallet});

  @override
  Widget build(BuildContext context) {
    // TODO: Implement the expenses page for the selected wallet
    return Scaffold(
      appBar: AppBar(
        title: Text(wallet.name),
      ),
      body: Center(
        child: Text('Expenses Page for ${wallet.name}'),
      ),
    );
  }
}
