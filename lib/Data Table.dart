import 'package:flutter/material.dart';

class DatatableDemo extends StatefulWidget {
  const DatatableDemo({Key? key}) : super(key: key);

  @override
  State<DatatableDemo> createState() => _DatatableDemoState();
}

class _DatatableDemoState extends State<DatatableDemo> {
  List<Map<String, dynamic>> Data = [
    {
      "No": "1",
      "Name": "Viraj",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Dayaram"
    },
    {
      "No": "2",
      "Name": "Denish",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Mamta Park"
    },
    {
      "No": "3",
      "Name": "Deep",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Yogi Chowk",
      "Society": "Parmeshwar"
    },
    {
      "No": "4",
      "Name": "JaydeepBhai",
      "Age": "26",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "MOta Varaccha",
      "Society": "ShivNagar"
    },
    {
      "No": "5",
      "Name": "Nikunj",
      "Age": "21",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Santosh Nagar"
    },
    {
      "No": "6",
      "Name": "Vishal",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Ayodhya"
    },
    {
      "No": "7",
      "Name": "Yash",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Vraj Chowk",
      "Society": "Manya"
    },
    {
      "No": "8",
      "Name": "Mahesh",
      "Age": "28",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Sarthana",
      "Society": "Sant Devidas"
    },
    {
      "No": "9",
      "Name": "Nevil",
      "Age": "24",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnaka",
      "Society": "MeghMalhar"
    },
    {
      "No": "10",
      "Name": "Jenis",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnak",
      "Society": "Meghmalhar"
    },
    {
      "No": "11",
      "Name": "Viraj",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Dayaram"
    },
    {
      "No": "12",
      "Name": "Denish",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Mamta Park"
    },
    {
      "No": "13",
      "Name": "Deep",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Yogi Chowk",
      "Society": "Parmeshwar"
    },
    {
      "No": "14",
      "Name": "JaydeepBhai",
      "Age": "26",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "MOta Varaccha",
      "Society": "ShivNagar"
    },
    {
      "No": "15",
      "Name": "Nikunj",
      "Age": "21",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Santosh Nagar"
    },
    {
      "No": "16",
      "Name": "Vishal",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Ayodhya"
    },
    {
      "No": "17",
      "Name": "Yash",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Vraj Chowk",
      "Society": "Manya"
    },
    {
      "No": "18",
      "Name": "Mahesh",
      "Age": "28",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Sarthana",
      "Society": "Sant Devidas"
    },
    {
      "No": "19",
      "Name": "Nevil",
      "Age": "24",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnaka",
      "Society": "MeghMalhar"
    },
    {
      "No": "20",
      "Name": "Jenis",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnak",
      "Society": "Meghmalhar"
    },
    {
      "No": "1",
      "Name": "Viraj",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Dayaram"
    },
    {
      "No": "2",
      "Name": "Denish",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Mamta Park"
    },
    {
      "No": "3",
      "Name": "Deep",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Yogi Chowk",
      "Society": "Parmeshwar"
    },
    {
      "No": "4",
      "Name": "JaydeepBhai",
      "Age": "26",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "MOta Varaccha",
      "Society": "ShivNagar"
    },
    {
      "No": "5",
      "Name": "Nikunj",
      "Age": "21",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Santosh Nagar"
    },
    {
      "No": "6",
      "Name": "Vishal",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Ayodhya"
    },
    {
      "No": "7",
      "Name": "Yash",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Vraj Chowk",
      "Society": "Manya"
    },
    {
      "No": "8",
      "Name": "Mahesh",
      "Age": "28",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Sarthana",
      "Society": "Sant Devidas"
    },
    {
      "No": "9",
      "Name": "Nevil",
      "Age": "24",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnaka",
      "Society": "MeghMalhar"
    },
    {
      "No": "10",
      "Name": "Jenis",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnak",
      "Society": "Meghmalhar"
    },
    {
      "No": "11",
      "Name": "Viraj",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Dayaram"
    },
    {
      "No": "12",
      "Name": "Denish",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Mamta Park"
    },
    {
      "No": "13",
      "Name": "Deep",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Yogi Chowk",
      "Society": "Parmeshwar"
    },
    {
      "No": "14",
      "Name": "JaydeepBhai",
      "Age": "26",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "MOta Varaccha",
      "Society": "ShivNagar"
    },
    {
      "No": "15",
      "Name": "Nikunj",
      "Age": "21",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Santosh Nagar"
    },
    {
      "No": "16",
      "Name": "Vishal",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Ayodhya"
    },
    {
      "No": "17",
      "Name": "Yash",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Vraj Chowk",
      "Society": "Manya"
    },
    {
      "No": "18",
      "Name": "Mahesh",
      "Age": "28",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Sarthana",
      "Society": "Sant Devidas"
    },
    {
      "No": "19",
      "Name": "Nevil",
      "Age": "24",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnaka",
      "Society": "MeghMalhar"
    },
    {
      "No": "20",
      "Name": "Jenis",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnak",
      "Society": "Meghmalhar"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = Data.first.keys.toList();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: List.generate(
            size.length,
            (index) => DataColumn(
              label: Text("${size[index]}"),
            ),
          ),
          rows: List.generate(
            Data.length,
            (index) => DataRow(
              cells: List.generate(
                size.length,
                (index1) => DataCell(
                  Text("${Data[index]["${size[index1]}"]}"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
