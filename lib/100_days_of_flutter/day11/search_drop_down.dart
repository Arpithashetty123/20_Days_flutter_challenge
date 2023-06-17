import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  _DropdownMenuExampleState createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String _selectedItem = 'Mangalore';
  List<String> _dropdownItems = ['Mangalore', 'Bangalore', 'Mysore'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dropdown Menu'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: SearchBar(
              
              hintText: " Sreach.........",
              leading: Icon(Icons.search),
            
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        
          Center(
            child: DropdownButton<String>(
              value: _selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue ?? '';
                });
              },
              items:
                  _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
      SearchField<Country>(
  suggestions: countries.map<SearchFieldListItem<Country>>(
    (e) => SearchFieldListItem<Country>(
      e.name,
      item: e,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            
            SizedBox(
              width: 10,
            ),
            Text(e.name),
          ],
        ),
      ),
    ),
  ).toList(),
  
)



        ],
      ),
    );
  }
}


  List<Country> countries = [
  Country('Mangalore'),
  Country('Bangalore'),
  Country('Mysore'),
];

class Country {
  final String name;
 
  Country(this.name, ); 
}

//It Has Two proprty DropDownbutton and DropDownMenuItem