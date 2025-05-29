class TransactionEntity {
  int numOfTotalTrxs;
  List<TransactionDetailsEntity> transactions;
  TransactionEntity({
    required this.numOfTotalTrxs,
    required this.transactions,
  });
}

class TransactionDetailsEntity {
  final String price;
  final String location;
  final String date;
  final String time;
  TransactionDetailsEntity({
    required this.price,
    required this.location,
    required this.date,
    required this.time,
  });
}
