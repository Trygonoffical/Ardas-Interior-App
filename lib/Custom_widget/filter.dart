import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceFilter extends StatefulWidget {
  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  String _selectedPriceRange = 'All';
  int _minPrice = 0;
  int _maxPrice = 0;

  final _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: _selectedPriceRange,
          onChanged: (value) {
            setState(() {
              _selectedPriceRange = value.toString();
              if (_selectedPriceRange != 'All') {
                var range = _selectedPriceRange.split('-');
                _minPrice = int.parse(range[0]);
                _maxPrice = int.parse(range[1]);
              }
            });
          },
          items: const [
            DropdownMenuItem(
              child: Text('All'),
              value: 'All',
            ),
            DropdownMenuItem(
              child: Text('0 - 50'),
              value: '0-50',
            ),
            DropdownMenuItem(
              child: Text('51 - 100'),
              value: '51-100',
            ),
            DropdownMenuItem(
              child: Text('101 - 150'),
              value: '101-150',
            ),
          ],
        ),
        TextField(
          controller: _priceController,
          decoration: InputDecoration(
            labelText: 'Custom Price Range',
          ),
          keyboardType: TextInputType.number,
          onChanged: (value) {
            var prices = value.split('-');
            if (prices.length == 2) {
              _minPrice = int.parse(prices[0]);
              _maxPrice = int.parse(prices[1]);
            }
          },
        ),
      ],
    );
  }
}


// class FilterPage extends StatefulWidget {
//   @override
//   _FilterPageState createState() => _FilterPageState();
// }

// class _FilterPageState extends State<FilterPage> {
//   String _selectedCategory = 'All';
//   String _selectedPriceRange = 'All';
//   int _minPrice = 0;
//   int _maxPrice = 0;

//   final _priceController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Filter'),
//         ),
//         body: ListView(padding: EdgeInsets.all(16.0), children: [
//           DropdownButton(
//             value: _selectedCategory,
//             onChanged: (value) {
//               setState(() {
//                 _selectedCategory = value.toString();
//               });
//             },
//             items: [
//               DropdownMenuItem(
//                 child: Text('All'),
//                 value: 'All',
//               ),
//               DropdownMenuItem(
//                 child: Text('Clothing'),
//                 value: 'Clothing',
//               ),
//               DropdownMenuItem(
//                 child: Text('Electronics'),
//                 value: 'Electronics',
//               ),
//               DropdownMenuItem(
//                 child: Text('Home & Kitchen'),
//                 value: 'Home & Kitchen',
//               ),
//             ],
//           ),
//           SizedBox(height: 16.0),
//           DropdownButton(
//             value: _selectedPriceRange,
//             onChanged: (value) {
//               setState(() {
//                 _selectedPriceRange = value.toString();
//                 if (_selectedPriceRange != 'All') {
//                   var range = _selectedPriceRange.split('-');
//                   _minPrice = int.parse(range[0]);
//                   _maxPrice = int.parse(range[1]);
//                 }
//               });
//             },
//             items: [
//               DropdownMenuItem(
//                 child: Text('All'),
//                 value: 'All',
//               ),
//               DropdownMenuItem(
//                 child: Text('0 - 50'),
//                 value: '0-50',
//               ),
//               DropdownMenuItem(
//                 child: Text('51 - 100'),
//                 value: '51-100',
//               ),
//               DropdownMenuItem(
//                 child: Text('101 - 150'),
//                 value: '101-150',
//               ),
//             ],
//           ),
//           SizedBox(height: 16.0),
//           TextField(
//             controller: _priceController,
//             decoration: InputDecoration(
//               labelText: 'Custom Price Range',
//             ),
//             keyboardType: TextInputType.number,
//             onChanged: (value) {
//               var prices = value.split('-');
//               if (prices.length == 2) {
//                 _minPrice = int.parse(prices[0]);
//                 _maxPrice = int.parse(prices[1]);
//               }
//             },
//           ),
//           SizedBox(height: 16.0),
//         ]));
//   }
// }
