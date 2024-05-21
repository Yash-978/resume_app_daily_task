import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/globalList_And_Variables.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoicePdf extends StatefulWidget {
  const InvoicePdf({super.key});

  @override
  State<InvoicePdf> createState() => _InvoicePdfState();
}

class _InvoicePdfState extends State<InvoicePdf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/pdf');
          },
          child: Icon(Icons.picture_as_pdf),
        ),
        body: Column(
          children: [
            ...List.generate(
              invoiceList.length,
              (index) => ListTile(
                title: Text(
                  'Name : ${invoiceList[index].name}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
                trailing: Text('Category :${'${invoiceList[index].category}'}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25)),
                subtitle: Text('Price  :${'${invoiceList[index].price}'}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<Uint8List> GeneratePdf() {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) => pw.Column(
              children: [
                ...List.generate(
                  invoiceList.length,
                  (index) => pw.Center(
                    child: pw.Text(
                      '\n${invoiceList[index].name}   '
                          '${invoiceList[index].category}  '
                          '${invoiceList[index].price}  ',
                      style: pw.TextStyle(color: PdfColors.black, fontSize: 30),
                    ),
                  )
                ),
              ],
            )),
  );
  return pdf.save();
}



//////////////////////////////////
List<InvoiceModel> invoiceList = [
  InvoiceModel(name: 'Hp ', price: '122121', category: 'Laptop'),
  InvoiceModel(name: 'Asus ', price: '354164', category: 'Laptop'),
  InvoiceModel(name: 'Omen ', price: '657412', category: 'Laptop'),
];

class InvoiceModel {
  String? name;
  String? price;
  String? category;

  InvoiceModel({this.name, this.price, this.category});
}