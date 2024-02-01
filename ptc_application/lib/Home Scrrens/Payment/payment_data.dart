class FeeData {
  final String receiptNo;
  final String session;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(
      {required this.receiptNo,
      required this.session,
      required this.date,
      required this.paymentStatus,
      required this.totalAmount,
      required this.btnStatus});
}

List<FeeData> fee = [
  FeeData(
      receiptNo: '03423',
      session: '2024-205',
      date: '03 July 2024',
      paymentStatus: 'Pending',
      totalAmount: '133333\rs',
      btnStatus: 'PAY NOW'),
  FeeData(
      receiptNo: '48579',
      session: '2023-2024',
      date: '26 dec, 2023',
      paymentStatus: 'Paid',
      totalAmount: '133333\rs',
      btnStatus: 'DOWNLOAD'),
  FeeData(
      receiptNo: '98502',
      session: '2022-2023',
      date: '26 Sept, 2022',
      paymentStatus: 'Paid',
      totalAmount: '133333\rs',
      btnStatus: 'DOWNLOAD'),
];
