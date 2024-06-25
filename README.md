# flutter_application_14

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# AppBar Widget

AppBar adalah widget yang sering digunakan pada Widget Scaffold pada properti atau named argument pada appBar:. penggunaan properti atau name argument masih banyak yang bisa di manfaatkan untuk membuat sebuah AppBar menjadi sesuai yang diinginkan.
![app_bar](https://github.com/appworkspaceRM/appbar-widget/assets/135511281/d7c0d1c9-c6a5-4e78-a14f-db0ef627f77e)

pada bagian atas sebuah aplikasi terdapat beberapa kategori seperi gambar di atas.

- leading biasa digunakan untuk sebuah icon yang menggambarkan aplikasi atau logo pada aplikasi
- title biasa digunakan untuk menamai aplikasi yang akan dibuat
- actions biasa digunakan untuk sebuah action yang dapat berpindah tempat seperti profile, setting dan lainya.
- bottom pada bagian awa kita bisa memberikan sebuah bottom seperti bottom app bar navigation.
- flexible space bisa digunakan untuk apapun custome appbar.

properti atau named argument yang bisa digunakan.

- backgroundColor digunakan untuk mewarnai appbar membutuhkan Widget Color
- title digunakan untuk memberikan penamaan aplikasi membutuhkan widget Text
- centerTitle digunakan untuk memindahkan title berapa di tengah menggunakan boolean true or false, pada iphone properti ini defaultnya true, pada android defaultnya false
- leading membutuhkan sebuah widget digunakan untuk logo tau menu aplikasi
- leadingWidht digukanan untuk menentukan lebar dari properti leading
- titleSpacing membutuhkan double dimana untuk menentukan jarak spaci title dengan katgori leading dal lainya.
- actions membutuhkan list of widget untuk membuat widget di sebelah kanan layar aplikasi.
- bottom membutuhkan widget PreferedSize diaman PreferedSize wajib mengirimkan name agument perferedSize yang membutuhkan Widget Size dan child yang membutuhkan sebuah Widget.
- flexibleSpace ruang bebas pada AppBar widget yang membutuhkan sebuah widget

```dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          leading: const Icon(Icons.menu),
          title: const Text(
            "APPBAR",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
          flexibleSpace: Container(
            height: 10000,
            color: Colors.green,
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
```
![code-snapshot](https://github.com/appworkspaceRM/appbar-widget/assets/135511281/dcd574c4-5c4b-4d2d-9696-8a76665141d4)
