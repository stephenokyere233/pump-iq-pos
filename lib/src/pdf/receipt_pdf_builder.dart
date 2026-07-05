import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../models/receipt_input_model.dart';
import '../shared/helpers/format_number.dart';

/// Builds receipt PDF bytes from [ReceiptInput].
class ReceiptPdfBuilder {
  ReceiptPdfBuilder._();

  static const String brandTitle = 'Pump IQ POS';

  static Future<List<int>> buildBytes(ReceiptInput input) async {
    final widthMm = input.paperWidth.millimeters;
    final pageFormat = PdfPageFormat(
      widthMm * PdfPageFormat.mm,
      double.infinity,
      marginTop: 4 * PdfPageFormat.mm,
      marginBottom: 4 * PdfPageFormat.mm,
      marginLeft: 3 * PdfPageFormat.mm,
      marginRight: 3 * PdfPageFormat.mm,
    );

    final doc = pw.Document();
    final baseFont = pw.Font.helvetica();
    final boldFont = pw.Font.helveticaBold();

    doc.addPage(
      pw.Page(
        pageFormat: pageFormat,
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          children: [
            _header(input, boldFont, baseFont),
            pw.SizedBox(height: 8),
            _sectionTitle('Sale details', boldFont),
            if (input.paymentReference != null &&
                input.paymentReference!.trim().isNotEmpty)
              _row('Reference', input.paymentReference!.trim(), baseFont),
            _row('Date', _formatDateTime(input.createdAt), baseFont),
            if (input.stationName != null && input.stationName!.isNotEmpty)
              _row('Station', input.stationName!, baseFont),
            if (input.pumpAttendantName != null &&
                input.pumpAttendantName!.isNotEmpty)
              _row('Attendant', input.pumpAttendantName!, baseFont),
            pw.SizedBox(height: 8),
            _divider(),
            pw.SizedBox(height: 8),
            _sectionTitle('Customer', boldFont),
            if (input.customerName != null && input.customerName!.isNotEmpty)
              _row('Name', input.customerName!, baseFont),
            if (input.customerPlate != null && input.customerPlate!.isNotEmpty)
              _row('Plate', input.customerPlate!, baseFont),
            if (input.customerPhone != null && input.customerPhone!.isNotEmpty)
              _row('Phone', input.customerPhone!, baseFont),
            pw.SizedBox(height: 8),
            _divider(),
            pw.SizedBox(height: 8),
            _sectionTitle('Fuel purchase', boldFont),
            if (input.fuelType != null && input.fuelType!.isNotEmpty)
              _row('Fuel type', input.fuelType!, baseFont),
            _row('Litres', formatNumber(input.litres), baseFont),
            if (input.unitPrice != null)
              _row(
                'Unit price',
                '${input.currencySymbol} ${formatNumber(input.unitPrice!)} / L',
                baseFont,
              ),
            if (input.price != null)
              _row(
                'Subtotal',
                '${input.currencySymbol} ${formatNumber(input.price!)}',
                baseFont,
              ),
            if (input.discount != null && input.discount! > 0)
              _row(
                'Discount',
                '- ${input.currencySymbol} ${formatNumber(input.discount!)}',
                baseFont,
              ),
            pw.SizedBox(height: 4),
            _row(
              'Total',
              '${input.currencySymbol} ${formatNumber(input.totalAmount)}',
              boldFont,
            ),
            pw.SizedBox(height: 8),
            _divider(),
            pw.SizedBox(height: 8),
            _sectionTitle('Payment', boldFont),
            _row('Method', input.paymentMethodLabel, baseFont),
            ..._momoSection(input, baseFont),
            if (input.pointsEarned != null && input.pointsEarned! > 0) ...[
              pw.SizedBox(height: 8),
              _row('Points earned', '${input.pointsEarned}', baseFont),
            ],
            pw.SizedBox(height: 12),
            _divider(),
            pw.SizedBox(height: 8),
            pw.Center(
              child: pw.Text(
                'Thank you for your purchase',
                style: pw.TextStyle(font: baseFont, fontSize: 9),
                textAlign: pw.TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );

    return doc.save();
  }

  static List<pw.Widget> _momoSection(ReceiptInput input, pw.Font baseFont) {
    final isMomo = input.paymentMethodLabel.toLowerCase().contains('momo');
    if (!isMomo) return [];

    return [
      if (input.momoPhone != null && input.momoPhone!.isNotEmpty)
        _row('MoMo phone', input.momoPhone!, baseFont),
      if (input.momoProviderLabel != null &&
          input.momoProviderLabel!.isNotEmpty)
        _row('Provider', input.momoProviderLabel!, baseFont),
      if (input.momoChargeStatusLabel != null &&
          input.momoChargeStatusLabel!.isNotEmpty)
        _row('Status', input.momoChargeStatusLabel!, baseFont),
    ];
  }

  static pw.Widget _header(ReceiptInput input, pw.Font bold, pw.Font base) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Text(
          brandTitle,
          style: pw.TextStyle(font: bold, fontSize: 12),
          textAlign: pw.TextAlign.center,
        ),
        if (input.stationName != null && input.stationName!.isNotEmpty) ...[
          pw.SizedBox(height: 4),
          pw.Text(
            input.stationName!,
            style: pw.TextStyle(font: base, fontSize: 9),
            textAlign: pw.TextAlign.center,
          ),
        ],
        pw.SizedBox(height: 6),
        pw.Text(
          'SALES RECEIPT',
          style: pw.TextStyle(font: bold, fontSize: 10),
          textAlign: pw.TextAlign.center,
        ),
      ],
    );
  }

  static pw.Widget _sectionTitle(String title, pw.Font bold) {
    return pw.Padding(
      padding: const pw.EdgeInsets.only(bottom: 4),
      child: pw.Text(
        title,
        style: pw.TextStyle(font: bold, fontSize: 9),
      ),
    );
  }

  static pw.Widget _row(String label, String value, pw.Font font) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 2),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Expanded(
            flex: 2,
            child: pw.Text(
              label,
              style: pw.TextStyle(font: font, fontSize: 8),
            ),
          ),
          pw.Expanded(
            flex: 3,
            child: pw.Text(
              value,
              style: pw.TextStyle(font: font, fontSize: 8),
              textAlign: pw.TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  static pw.Widget _divider() {
    return pw.Divider(
      thickness: 0.5,
      color: PdfColors.grey400,
    );
  }

  static String _formatDateTime(String? iso) {
    if (iso == null || iso.isEmpty) {
      return DateTime.now().toString().substring(0, 19);
    }
    final parsed = DateTime.tryParse(iso);
    if (parsed == null) return iso;
    final local = parsed.toLocal();
    final y = local.year.toString().padLeft(4, '0');
    final m = local.month.toString().padLeft(2, '0');
    final d = local.day.toString().padLeft(2, '0');
    final h = local.hour.toString().padLeft(2, '0');
    final min = local.minute.toString().padLeft(2, '0');
    return '$y-$m-$d $h:$min';
  }
}
