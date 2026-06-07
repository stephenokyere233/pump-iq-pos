import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../models/receipt_input_model.dart';
import '../pdf/receipt_pdf_builder.dart';
import '../utils/utils.dart';
import 'path_service.dart';

/// Generates formatted PDF receipts and writes them to temp storage.
class ReceiptService {
  ReceiptService._();
  static final ReceiptService instance = ReceiptService._();

  /// Builds a PDF receipt and returns the absolute file path.
  FutureEither<String> generateReceiptPdfFile(ReceiptInput input) async {
    final tempResult = await PathService.instance.getTempDirectory();
    return tempResult.fold(
      left,
      (dir) => runTask(() async {
        final bytes = await ReceiptPdfBuilder.buildBytes(input);
        final fileName =
            'receipt_${input.saleId}_${DateTime.now().millisecondsSinceEpoch}.pdf';
        final file = File('${dir.path}/$fileName');
        await file.writeAsBytes(bytes, flush: true);
        return file.path;
      }),
    );
  }
}
