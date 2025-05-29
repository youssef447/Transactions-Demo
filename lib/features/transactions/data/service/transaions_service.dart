import 'dart:convert';

import 'package:transactions_app/features/transactions/data/models/transaction_model.dart';

import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/services/remote/dio_service.dart';

class TransactionsService {
  Future<TransactionModel> getTransactions() async {
    final response = await DioService.getData(
      method: ApiEndpoints.getTransactions,
    );
    final modifiedResponse = (response.data as String).replaceAll("'", '"');
    final model = TransactionModel.fromMap(json.decode(modifiedResponse));
    return model;
  }
}
