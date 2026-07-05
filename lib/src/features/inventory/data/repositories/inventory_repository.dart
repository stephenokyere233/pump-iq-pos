import '../../../../services/auth_service.dart';
import '../../../../utils/typedefs.dart';
import '../../../sale/data/models/fuel_price_model.dart';
import '../services/inventory_service.dart';

class InventoryRepository {
  final InventoryService _service = InventoryService.instance;

  FutureEither<List<FuelPrice>> getActiveFuelPrices({
    String? companyId,
    String? stationId,
  }) async {
    final resolvedCompany = companyId ?? AuthService.instance.getCompanyId();

    final result = await _service.listStocks(company: resolvedCompany);
    return result.map((page) {
      if (page.results.isNotEmpty) {
        AuthService.instance.setCompanyId(page.results.first.company);
      }

      return page.results
          .map(
            (stock) => FuelPrice(
              id: stock.id,
              fuelType: stock.name,
              unitPrice: stock.unitPrice,
              stationId: stationId ?? AuthService.instance.getStationId() ?? '',
              territoryId: '',
              status: 'active',
            ),
          )
          .toList();
    });
  }
}
