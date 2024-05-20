import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app_daily_task/Dynamic_Text_field/InVoice_pdf_Generator/invoice.dart';

class makepdf extends StatefulWidget {
  const makepdf({super.key});

  @override
  State<makepdf> createState() => _makepdfState();
}

class _makepdfState extends State<makepdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => GeneratePdf(),

      ),
    );
  }
}
