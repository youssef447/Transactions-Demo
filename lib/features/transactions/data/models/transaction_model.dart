class TransactionModel {
  int numOfTotalTrxs;
  List<TransactionDetailsModel> transactions;
  TransactionModel({
    required this.numOfTotalTrxs,
    required this.transactions,
  });

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      numOfTotalTrxs: map['numOfTotalTrxs'] as int,
      transactions: List<TransactionDetailsModel>.from(
        (map['transactions'] as List<dynamic>).map(
          (data) => TransactionDetailsModel.fromMap(data),
        ),
      ),
    );
  }
}

class TransactionDetailsModel {
  final double price;
  final String location;
  final String timestamp;
  TransactionDetailsModel({
    required this.price,
    required this.location,
    required this.timestamp,
  });

  factory TransactionDetailsModel.fromMap(Map<String, dynamic> map) {
    return TransactionDetailsModel(
      price: map['price'] as double,
      location: map['location'] as String,
      timestamp: map['timestamp'] as String,
    );
  }
}
