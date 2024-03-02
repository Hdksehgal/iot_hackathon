import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

class QRcode extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _QRcodeState();
  }
}
class _QRcodeState extends State<QRcode>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
      ),
    );
  }
}