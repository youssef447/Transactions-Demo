import 'package:get/get.dart';
import 'package:transactions_app/core/constants/api_endpoints.dart';
import 'package:transactions_app/core/services/remote/dio_service.dart';
import 'package:transactions_app/core/theme/controller/app_theme_controller.dart';
import 'package:transactions_app/features/transactions/data/repository/transactions_repo_impl.dart';
import 'package:transactions_app/features/transactions/data/service/transaions_service.dart';

import '../../features/transactions/domain/usecases/get_trasactions_usecase.dart';
import '../../features/transactions/presentation/controller/transactions_controller.dart';
import '../services/local/app_cache_service.dart';

Future<void> configureDependencies() async {
  await AppCacheService.init();
  DioService.init(baseUrl: ApiEndpoints.baseUrl);

//UI
  await Get.putAsync<AppThemeController>(() async {
    final controller = AppThemeController();
    await controller.getCurrentTheme();
    return controller;
  });
  Get.lazyPut(
      () => TransactionsRepoImpl(transactionsService: TransactionsService()));
  Get.lazyPut(
    () => TransactionsController(
      trasactionsuseCase: GetTrasactionsUseCase(
        transactionsRepo: Get.find<TransactionsRepoImpl>(),
      ),
    ),
    fenix: true,
  );
}
