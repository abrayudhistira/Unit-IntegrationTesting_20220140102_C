import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
final String name,
      birthplace,
      birthdate,
      gender,
      phonenumber,
      email,
      religion,
      job,
      address,
      polyclinic;

  const ViewPage(
      {Key? key,
      required this.name,
      required this.birthplace,
      required this.birthdate,
      required this.gender,
      required this.phonenumber,
      required this.email,
      required this.religion,
      required this.job,
      required this.address,
      required this.polyclinic})
      : super(key: key);

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: ${widget.name}'),
              Text('Birth Place: ${widget.birthplace}'),
              Text('Birht Date: ${widget.birthdate}'),
              Text('Gender: ${widget.gender}'),
              Text('Phone Number: ${widget.phonenumber}'),
              Text('Email: ${widget.email}'),
              Text('Religion: ${widget.religion}'),
              Text('Job: ${widget.job}'),
              Text('Address: ${widget.address}'),
              Text('Polyclinic: ${widget.polyclinic}'),
            ],
          ),
        ),
      ),
    );
  }
}

// class ViewPage extends StatelessWidget {
//   final String name,
//       birthplace,
//       birthdate,
//       gender,
//       phonenumber,
//       email,
//       religion,
//       job,
//       address,
//       polyclinic;
//   const ViewPage(
//       {Key? key,
//       required this.name,
//       required this.birthplace,
//       required this.birthdate,
//       required this.gender,
//       required this.phonenumber,
//       required this.email,
//       required this.religion,
//       required this.job,
//       required this.address,
//       required this.polyclinic})
//       : super(key: key);
//   @override
  
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Name: $name'),
//               Text('Birth Place: $birthplace'),
//               Text('Birht Date: $birthdate'),
//               Text('Gender: $gender'),
//               Text('Phone Number: $phonenumber'),
//               Text('Email: $email'),
//               Text('Religion: $religion'),
//               Text('Job: $job'),
//               Text('Address: $address'),
//               Text('Polyclinic: $polyclinic'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
