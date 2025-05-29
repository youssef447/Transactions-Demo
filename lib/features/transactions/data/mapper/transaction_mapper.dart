import 'package:transactions_app/core/helpers/currency_format_helper.dart';
import 'package:transactions_app/core/helpers/date_format_helper.dart';
import 'package:transactions_app/features/transactions/data/models/transaction_model.dart';
import 'package:transactions_app/features/transactions/domain/entities/transaction_entity.dart';

abstract class TransactionMapper {
  static TransactionEntity transactionModelToEntity(
      TransactionModel transactionModel) {
    return TransactionEntity(
      numOfTotalTrxs: transactionModel.numOfTotalTrxs,
      transactions: TransactionDetailsMapper.transactionDetailsModelToEntity(
          transactionModel.transactions),
    );
  }
}

abstract class TransactionDetailsMapper {
  static List<TransactionDetailsEntity> transactionDetailsModelToEntity(
      List<TransactionDetailsModel> transactionDetailsModel) {
    return List<TransactionDetailsEntity>.from(
      transactionDetailsModel.map(
        (data) => TransactionDetailsEntity(
          price: CurrencyFormatHelper.format(data.price),
          location: data.location,
          date: DateFormatHelper.formatDate(DateTime.parse(data.timestamp)),
          time: DateFormatHelper.formatTime(DateTime.parse(data.timestamp)),
        ),
      ),
    );
  }
}
