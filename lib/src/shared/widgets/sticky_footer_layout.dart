import '../../imports/imports.dart';

/// A layout that keeps [footer] pinned at the bottom while the [body] scrolls.
///
/// Useful for payment and form screens where the primary CTA must always
/// remain visible regardless of content length.
class StickyFooterLayout extends StatelessWidget {
  const StickyFooterLayout({
    super.key,
    required this.body,
    required this.footer,
    this.padding,
    this.centerBody = false,
  });

  /// Scrollable content area.
  final Widget body;

  /// Fixed widget pinned to the bottom (typically an [AppButton]).
  final Widget footer;

  /// Padding applied to both [body] and [footer]. Defaults to horizontal `AppSpacing.lg`.
  final EdgeInsetsGeometry? padding;

  /// When true, vertically centres [body] if it doesn't fill the viewport.
  final bool centerBody;

  @override
  Widget build(BuildContext context) {
    final effectivePadding =
        padding ?? EdgeInsets.symmetric(horizontal: AppSpacing.lg.w);

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              if (centerBody)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: effectivePadding,
                    child: body,
                  ),
                )
              else
                SliverPadding(
                  padding: effectivePadding,
                  sliver: SliverToBoxAdapter(child: body),
                ),
            ],
          ),
        ),
        Padding(
          padding: effectivePadding.add(
            EdgeInsets.only(
              top: AppSpacing.md.h,
              bottom: AppSpacing.xs.h,
            ),
          ),
          child: footer,
        ),
      ],
    );
  }
}
