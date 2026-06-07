import 'package:pump_iq/src/imports/core_imports.dart';
import 'package:pump_iq/src/imports/packages_imports.dart';

import '../../data/models/fuel_price_model.dart';
import '../providers/sale_bloc.dart';

class FuelTypePickerSheet extends StatefulWidget {
  const FuelTypePickerSheet({super.key, this.selected});

  final FuelPrice? selected;

  @override
  State<FuelTypePickerSheet> createState() => _FuelTypePickerSheetState();
}

class _FuelTypePickerSheetState extends State<FuelTypePickerSheet> {
  final _searchController = TextEditingController();
  String _searchQuery = '';
  String? _stationError;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() => _searchQuery = _searchController.text.trim());
    });
    _loadFuelPrices();
  }

  void _loadFuelPrices() {
    if (AuthService.instance.getStationId() == null) {
      setState(
        () => _stationError = 'Station not configured. Please sign in again.',
      );
      return;
    }
    context.read<SaleBloc>().add(const LoadActiveFuelPrices());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<FuelPrice> _filteredPrices(List<FuelPrice> prices) {
    if (_searchQuery.isEmpty) return prices;
    final query = _searchQuery.toLowerCase();
    return prices
        .where((price) => price.fuelType.toLowerCase().contains(query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.75;
    final colorScheme = context.colors;

    return Container(
      constraints: BoxConstraints(maxHeight: maxHeight),
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
            'Select Fuel Type',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          SizedBox(height: AppSpacing.md.h),
          TextField(
            controller: _searchController,
            autofocus: true,
            style: context.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
            ),
            decoration: InputDecoration(
              hintText: 'Search fuel type...',
              hintStyle: context.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
              ),
              prefixIcon: Icon(Icons.search,
                  color: colorScheme.onSurfaceVariant, size: 22.sp),
              suffixIcon: _searchQuery.isNotEmpty
                  ? IconButton(
                      icon: Icon(Icons.clear,
                          size: 20.sp, color: colorScheme.onSurfaceVariant),
                      onPressed: () => _searchController.clear(),
                    )
                  : null,
              filled: true,
              fillColor: colorScheme.surfaceContainerLowest,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: colorScheme.outlineVariant),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: colorScheme.outlineVariant),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: colorScheme.primary, width: 2),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppSpacing.md.w,
                vertical: AppSpacing.sm.h,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.md.h),
          Flexible(
            child: BlocBuilder<SaleBloc, SaleState>(
              builder: (context, state) {
                if (_stationError != null) {
                  return _MessageState(message: _stationError!);
                }
                if (state.isFuelPricesLoading) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: colorScheme.primary,
                    ),
                  );
                }
                final filtered = _filteredPrices(state.fuelPrices);
                if (state.fuelPrices.isEmpty) {
                  return _MessageState(
                    message: 'No active fuel prices found for this station.',
                    actionLabel: 'Retry',
                    onAction: _loadFuelPrices,
                  );
                }
                if (filtered.isEmpty) {
                  return const _MessageState(
                      message: 'No fuel types match your search.');
                }
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: filtered.length,
                  separatorBuilder: (_, __) =>
                      Divider(height: 1, color: colorScheme.outlineVariant),
                  itemBuilder: (context, index) {
                    final price = filtered[index];
                    final isSelected = price.id == widget.selected?.id;
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.xs.w,
                        vertical: AppSpacing.xs.h,
                      ),
                      title: Text(
                        price.fuelType,
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.w500,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      subtitle: Text(
                        'GHS ${price.unitPrice.toStringAsFixed(2)} / L',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      trailing: isSelected
                          ? Icon(Icons.check_circle,
                              color: colorScheme.primary, size: 22.sp)
                          : null,
                      onTap: () => Navigator.of(context).pop(price),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageState extends StatelessWidget {
  const _MessageState({
    required this.message,
    this.actionLabel,
    this.onAction,
  });

  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.lg.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            if (actionLabel != null && onAction != null) ...[
              SizedBox(height: AppSpacing.md.h),
              TextButton(onPressed: onAction, child: Text(actionLabel!)),
            ],
          ],
        ),
      ),
    );
  }
}
