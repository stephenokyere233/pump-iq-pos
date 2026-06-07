import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/utils.dart';

/// A service to handle sharing content via the platform's native share dialog.
class ShareService {
  ShareService._();
  static final ShareService instance = ShareService._();

  /// Resolves a non-zero global rect for iOS/iPadOS share-sheet popovers.
  static Rect sharePositionOriginFor(
    BuildContext context, {
    BuildContext? anchorContext,
  }) {
    final anchor = anchorContext ?? context;
    final renderBox = anchor.findRenderObject() as RenderBox?;
    if (renderBox != null && renderBox.hasSize) {
      final origin = renderBox.localToGlobal(Offset.zero);
      final size = renderBox.size;
      if (size.width > 0 && size.height > 0) {
        return origin & size;
      }
    }

    final screenSize = MediaQuery.sizeOf(context);
    return Rect.fromCenter(
      center: Offset(screenSize.width / 2, screenSize.height / 2),
      width: 1,
      height: 1,
    );
  }

  /// Share plain text content.
  FutureEither<ShareResult> shareText(
    String text, {
    String? subject,
    Rect? sharePositionOrigin,
  }) async {
    return runTask(() => Share.share(
          text,
          subject: subject,
          sharePositionOrigin: sharePositionOrigin,
        ));
  }

  /// Share files.
  FutureEither<ShareResult> shareFiles(
    List<String> paths, {
    String? text,
    String? subject,
    Rect? sharePositionOrigin,
  }) async {
    return runTask(() => Share.shareXFiles(
          paths.map((p) => XFile(p)).toList(),
          text: text,
          subject: subject,
          sharePositionOrigin: sharePositionOrigin,
        ));
  }

  /// Share a generated receipt PDF via the platform share sheet.
  FutureEither<ShareResult> shareReceiptFile(
    String filePath, {
    String? previewText,
    Rect? sharePositionOrigin,
  }) =>
      shareFiles(
        [filePath],
        text: previewText,
        subject: 'Fuel sale receipt',
        sharePositionOrigin: sharePositionOrigin,
      );
}
