import 'package:pump_iq/src/features/auth/data/models/pump_info_model.dart';
import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

class PumpPickerSheet extends StatelessWidget {
  const PumpPickerSheet({
    super.key,
    required this.pumps,
    this.selected,
  });

  final List<PumpInfo> pumps;
  final PumpInfo? selected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    return Container(
      padding: EdgeInsets.only(
        left: AppSpacing.lg.w,
        right: AppSpacing.lg.w,
        top: AppSpacing.lg.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + AppSpacing.lg.h,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          SizedBox(height: AppSpacing.lg.h),
          Text(
            'Select Pump',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          SizedBox(height: AppSpacing.md.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: pumps.length,
            separatorBuilder: (_, __) =>
                Divider(height: 1, color: colorScheme.outlineVariant),
            itemBuilder: (context, index) {
              final pump = pumps[index];
              final isSelected = pump.id == selected?.id;
              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.xs.w,
                  vertical: AppSpacing.xs.h,
                ),
                title: Text(
                  pump.displayLabel,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                    color: colorScheme.onSurface,
                  ),
                ),
                trailing: isSelected
                    ? Icon(Icons.check_circle,
                        color: colorScheme.primary, size: 22.sp)
                    : null,
                onTap: () => Navigator.of(context).pop(pump),
              );
            },
          ),
        ],
      ),
    );
  }
}
