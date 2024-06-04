// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:form_example/main.dart';
// import 'package:form_example/view_page.dart';

// void main() {
//   testWidgets('Form Widget Test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify the presence of all text fields.
//     expect(find.byType(TextField), findsNWidgets(10));

//     // Enter text in each text field.
//     await tester.enterText(find.byKey(Key('nameField')), 'John Doe');
//     await tester.enterText(find.byKey(Key('birthplaceField')), 'New York');
//     await tester.enterText(find.byKey(Key('birthdateField')), '01/01/2000');
//     await tester.enterText(find.byKey(Key('genderField')), 'Male');
//     await tester.enterText(find.byKey(Key('phoneField')), '1234567890');
//     await tester.enterText(find.byKey(Key('emailField')), 'john.doe@example.com');
//     await tester.enterText(find.byKey(Key('religionField')), 'None');
//     await tester.enterText(find.byKey(Key('jobField')), 'Engineer');
//     await tester.enterText(find.byKey(Key('addressField')), '123 Main St');
//     await tester.enterText(find.byKey(Key('polyclinicField')), 'Clinic A');

//     // Tap the submit button and trigger a frame.
//     await tester.tap(find.byType(ElevatedButton));
//     await tester.pump();

//     // Verify if the ViewPage is opened.
//     expect(find.byType(ViewPage), findsOneWidget);
//   });

//   testWidgets('Form Widget Empty Fields Validation', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Tap the submit button without entering any text.
//     await tester.tap(find.byType(ElevatedButton));
//     await tester.pump();

//     // Verify if the alert dialog is shown.
//     expect(find.byType(AlertDialog), findsOneWidget);
//     expect(find.text('Warning !!'), findsOneWidget);
//     expect(find.text('Please, input all your data needed...'), findsOneWidget);
//   });
// }

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('ViewPage displays correct information', (WidgetTester tester) async {
    // Create a ViewPage instance with sample data
    final viewPage = ViewPage(
      name: 'John Doe',
      birthplace: 'New York',
      birthdate: '1990-01-01',
      gender: 'Male',
      phonenumber: '123-456-7890',
      email: 'johndoe@example.com',
      religion: 'Christian',
      job: 'Software Engineer',
      address: '123 Main St',
      polyclinic: 'Polyclinic ABC',
    );

    // Pump the widget into the tester
    await tester.pumpWidget(MaterialApp(home: viewPage));

    // Verify that the correct information is displayed
    expect(find.text('Name: John Doe'), findsOneWidget);
    expect(find.text('Birth Place: New York'), findsOneWidget);
    expect(find.text('Birht Date: 1990-01-01'), findsOneWidget);
    expect(find.text('Gender: Male'), findsOneWidget);
    expect(find.text('Phone Number: 123-456-7890'), findsOneWidget);
    expect(find.text('Email: johndoe@example.com'), findsOneWidget);
    expect(find.text('Religion: Christian'), findsOneWidget);
    expect(find.text('Job: Software Engineer'), findsOneWidget);
    expect(find.text('Address: 123 Main St'), findsOneWidget);
    expect(find.text('Polyclinic: Polyclinic ABC'), findsOneWidget);
  });

  testWidgets('ViewPage displays empty strings when no data is provided', (WidgetTester tester) async {
    // Create a ViewPage instance with empty strings
    final viewPage = ViewPage(
      name: '',
      birthplace: '',
      birthdate: '',
      gender: '',
      phonenumber: '',
      email: '',
      religion: '',
      job: '',
      address: '',
      polyclinic: '',
    );

    // Pump the widget into the tester
    await tester.pumpWidget(MaterialApp(home: viewPage));

    // Verify that empty strings are displayed
    expect(find.text('Name: '), findsOneWidget);
    expect(find.text('Birth Place: '), findsOneWidget);
    expect(find.text('Birht Date: '), findsOneWidget);
    expect(find.text('Gender: '), findsOneWidget);
    expect(find.text('Phone Number: '), findsOneWidget);
    expect(find.text('Email: '), findsOneWidget);
    expect(find.text('Religion: '), findsOneWidget);
    expect(find.text('Job: '), findsOneWidget);
    expect(find.text('Address: '), findsOneWidget);
    expect(find.text('Polyclinic: '), findsOneWidget);
  });
}