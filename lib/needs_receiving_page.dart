import 'package:flutter/material.dart';
import 'update_needs_page.dart'; // UpdateNeedsPage import edildiğinden emin olun

class NeedsReceivingPage extends StatefulWidget {
  @override
  _NeedsReceivingPageState createState() => _NeedsReceivingPageState();
}

class _NeedsReceivingPageState extends State<NeedsReceivingPage> {
  final List<Map<String, dynamic>> needs = [
    {'item': 'Indoor Heater', 'needed': 100, 'fulfilled': 50},
    {'item': 'Sleeping Bags (Adult & Child)', 'needed': 200, 'fulfilled': 100},
    {'item': 'Blankets, Bedding Sets', 'needed': 300, 'fulfilled': 150},
    {'item': 'Pocket Warmers', 'needed': 500, 'fulfilled': 250},
    {'item': 'Electric Heaters', 'needed': 100, 'fulfilled': 50},
    {
      'item': 'Synthetic Thermal Underwear (Adult & Child)',
      'needed': 200,
      'fulfilled': 100
    },
    {
      'item': 'Winter Accessories (Hats, Gloves, Scarves)',
      'needed': 400,
      'fulfilled': 200
    },
    {'item': 'Fleece Blankets, Mid-Layers', 'needed': 300, 'fulfilled': 150},
    {
      'item': 'Winter Boots, Coats, and Raincoats (Adult & Child)',
      'needed': 500,
      'fulfilled': 250
    },
    {'item': 'Dry Food Packages', 'needed': 600, 'fulfilled': 300},
    {
      'item': 'Hygiene and Disinfectant Supplies',
      'needed': 800,
      'fulfilled': 400
    },
    {
      'item': 'Clean Clothes for Adults and Children',
      'needed': 700,
      'fulfilled': 350
    },
    {
      'item':
          'Baby Food, Bottles, Pacifiers, Diapers, Feminine Hygiene Products',
      'needed': 500,
      'fulfilled': 250
    },
    {
      'item': 'Power Banks, Hand and Head Lamps, Batteries',
      'needed': 400,
      'fulfilled': 200
    },
    {'item': 'Water (0.25 or 0.50 L packs)', 'needed': 1000, 'fulfilled': 500},
  ];

  void _addNewItem() async {
    final Map<String, dynamic>? newNeed =
        await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (BuildContext context) {
        TextEditingController itemController = TextEditingController();
        TextEditingController neededController = TextEditingController();
        return AlertDialog(
          title: Text('Add New Need'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: itemController,
                decoration: InputDecoration(labelText: 'Item'),
              ),
              TextField(
                controller: neededController,
                decoration: InputDecoration(labelText: 'Needed'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop({
                  'item': itemController.text,
                  'needed': int.tryParse(neededController.text) ?? 0,
                  'fulfilled': 0,
                });
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );

    if (newNeed != null) {
      setState(() {
        needs.add(newNeed);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Needs Receiving'),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: ListView.builder(
        itemCount: needs.length,
        itemBuilder: (context, index) {
          final need = needs[index];
          return Card(
            color: const Color.fromARGB(255, 49, 49, 49),
            child: ListTile(
              title: Text(need['item'], style: TextStyle(color: Colors.yellow)),
              subtitle: Text(
                  'Needed: ${need['needed']} - Fulfilled: ${need['fulfilled']}',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.check_circle_outline, color: Colors.yellow),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpdateNeedsPage(need: need),
                  ),
                );
                if (result != null) {
                  setState(() {
                    int index = needs.indexWhere(
                        (element) => element['item'] == result['item']);
                    if (index != -1) {
                      needs[index]['fulfilled'] = result['fulfilled'];
                    }
                  });
                }
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewItem,
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
