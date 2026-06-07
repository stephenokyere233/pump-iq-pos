import 'package:pump_iq/src/features/auth/data/models/user_model.dart';
import 'package:pump_iq/src/features/auth/presentation/providers/session_bloc.dart';

import '../../imports/imports.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({
    super.key,
    this.actions,
    this.showBack,
    this.onBack,
    this.isTransparent = false,
    this.foregroundColor,
  });

  final List<Widget>? actions;
  final bool? showBack;
  final VoidCallback? onBack;
  final bool isTransparent;
  final Color? foregroundColor;

  @override
  Size get preferredSize => Size.fromHeight(72.h);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colorScheme = theme.colorScheme;
    final onColor = foregroundColor ??
        (isTransparent ? Colors.white : colorScheme.onSurface);
    final subtitleColor = foregroundColor != null
        ? foregroundColor!.withValues(alpha: 0.85)
        : colorScheme.onSurfaceVariant;

    final session = context.watch<SessionBloc>().state;
    final user = session.user;
    final attendantName = _attendantDisplayName(user);
    final stationName = _stationDisplayName(user);

    final canPop = context.canPop();
    final shouldShowBack = showBack ?? canPop;

    void handleBack() {
      if (onBack != null) {
        onBack!();
      } else if (canPop) {
        context.pop();
      } else {
        context.go(AppRoutes.purchaseSale);
      }
    }

    void handleLogout() {
      context.read<SessionBloc>().add(const SessionLogoutRequested());
    }

    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: isTransparent ? Colors.transparent : null,
      shadowColor: Colors.transparent,
      toolbarHeight: preferredSize.height,
      leadingWidth: shouldShowBack ? 40.w : 0,
      automaticallyImplyLeading: false,
      leading: shouldShowBack
          ? GestureDetector(
              onTap: handleBack,
              child: ColoredBox(
                color: Colors.transparent,
                child: Icon(Icons.arrow_back, color: onColor),
              ),
            )
          : null,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            attendantName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: onColor,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            stationName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall?.copyWith(
              color: subtitleColor,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: onColor),
      actions: [
        ...?actions,
        TextButton(
          onPressed: handleLogout,
          child: Text(
            'Logout',
            style: theme.textTheme.labelLarge?.copyWith(
              color: onColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  String _attendantDisplayName(AppUser? user) {
    if (user == null) return 'Attendant';
    final name = user.name?.trim();
    if (name != null && name.isNotEmpty) return name;
    if (user.email.isNotEmpty) return user.email;
    return 'Attendant';
  }

  String _stationDisplayName(AppUser? user) {
    final name = user?.stationName?.trim();
    if (name != null && name.isNotEmpty) return name;
    return 'Station';
  }
}
