import 'package:dartz/dartz.dart';

import '../../../../core/error_handler/failure.dart';
import '../entities/transaction_entity.dart';
import '../repository/i_transactions_repo.dart';

class GetTrasactionsUseCase {
  ITransactionsRepo transactionsRepo;
  GetTrasactionsUseCase({required this.transactionsRepo});

  Future<Either<Failure, TransactionEntity>> getTransactions() async {
    //extra logic if needed
    return await transactionsRepo.getTransactions();
  }
}
