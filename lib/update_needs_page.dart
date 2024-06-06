import 'package:flutter/material.dart';

class UpdateNeedsPage extends StatefulWidget {
  final Map<String, dynamic> need;

  UpdateNeedsPage({Key? key, required this.need}) : super(key: key);

  @override
  _UpdateNeedsPageState createState() => _UpdateNeedsPageState();
}

class _UpdateNeedsPageState extends State<UpdateNeedsPage> {
  int _currentFulfilledValue = 0; // Başlangıç değeri ile başlatılıyor

  @override
  void initState() {
    super.initState();
    _currentFulfilledValue = widget.need['fulfilled']
        as int; // Başlangıç değeri 'initState' içinde atanıyor
  }

  void _updateFulfilledValue(double newValue) {
    setState(() {
      _currentFulfilledValue = newValue.round();
    });
  }

  void _saveUpdates() {
    // Navigator.pop ile güncellenen değeri ana sayfaya döndür
    Navigator.pop(context,
        {'item': widget.need['item'], 'fulfilled': _currentFulfilledValue});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Needs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item: ${widget.need['item']}',
                style: TextStyle(fontSize: 24)),
            Text('Required: ${widget.need['needed']}',
                style: TextStyle(fontSize: 18)),
            Text('Fulfilled: $_currentFulfilledValue',
                style: TextStyle(fontSize: 18)),
            Slider(
              min: 0,
              max: (widget.need['needed'] as int).toDouble(),
              value: _currentFulfilledValue.toDouble(),
              divisions: widget.need['needed'],
              label: _currentFulfilledValue.toString(),
              onChanged: _updateFulfilledValue,
            ),
            ElevatedButton(
              onPressed: _saveUpdates,
              child: Text('Update'),
            )
          ],
        ),
      ),
    );
  }
}
