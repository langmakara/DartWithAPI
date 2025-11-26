class Expense { 
  static const String noField = 'no'; 
  static const String descrField = 'descr'; 
  static const String amountField = 'amount'; 
  static const String dateField = 'date'; 
  static int count = 0; 
 
  int _no; 
  String descr; 
  double amount; 
  DateTime date; 
 
  Expense({required this.descr, required this.amount, required this.date}) 
    : _no = ++count; 
  Expense._default() : _no = 0, descr = '', amount = 0.0, date = DateTime.now(); 
 
  int get no => _no; 
  Map<String, dynamic> toJson() => { 
    Expense.noField: _no, 
    Expense.descrField: descr, 
    Expense.amountField: amount, 
    Expense.dateField: date.toIso8601String(), 
  }; 
 
  static Expense fromJson(Map<String, dynamic> jsonMap) { 
    var exp = Expense._default(); 
    exp._no = jsonMap[Expense.noField]; 
    exp.descr = jsonMap[Expense.descrField]; 
    exp.amount = (jsonMap[Expense.amountField] as num).toDouble(); 
    exp.date = DateTime.parse(jsonMap[Expense.dateField]); 
    return exp; 
  } 
}