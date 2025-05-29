// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:transactions_app/features/transactions/domain/entities/transaction_entity.dart';

import '../../domain/usecases/get_trasactions_usecase.dart';

class TransactionsController extends GetxController {
  final GetTrasactionsUseCase trasactionsuseCase;
  bool loading = false;
  TransactionsController({
    required this.trasactionsuseCase,
  });

  TransactionEntity? transnactions;
  @override
  void onInit() {
    super.onInit();
    getTransactions();
  }

  String error = '';
  getTransactions() async {
    loading = true;
    update();
    error = '';
    final result = await trasactionsuseCase.getTransactions();
    result.fold((l) {
      error = l.message;

      loading = false;
      update();
    }, (r) {
      transnactions = r;
      loading = false;
      update();
    });
  }
}
