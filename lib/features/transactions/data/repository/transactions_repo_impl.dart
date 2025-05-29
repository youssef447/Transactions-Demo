import 'package:dartz/dartz.dart';

import 'package:transactions_app/core/error_handler/error_handler_mixen.dart';
import 'package:transactions_app/core/error_handler/failure.dart';
import 'package:transactions_app/features/transactions/data/mapper/transaction_mapper.dart';
import 'package:transactions_app/features/transactions/domain/entities/transaction_entity.dart';

import '../../domain/repository/i_transactions_repo.dart';
import '../service/transaions_service.dart';

class TransactionsRepoImpl with ErrorHandlerMixin implements ITransactionsRepo {
  final TransactionsService transactionsService;
  TransactionsRepoImpl({
    required this.transactionsService,
  });
  @override
  Future<Either<Failure, TransactionEntity>> getTransactions() {
    return handleDatabaseErrors(() async {
      final res = await transactionsService.getTransactions();

      return TransactionMapper.transactionModelToEntity(res);
    });
  }
}
