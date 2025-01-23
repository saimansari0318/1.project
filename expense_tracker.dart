import 'dart:io';

void main() {
  List<Map<String, dynamic>> expenses = [];
  print('welcome');
//yaha se kaam shoro

  while (true) {
    print('if you want to add expense press 1');
    print('if you want to view expense press 2');
    print('if you want to see total expense press 3');
    print('if you want to exit press 4');

    num user_input = num.parse(stdin.readLineSync()!);

    if (user_input == 1) {
      add_method(expenses);
    } else if (user_input == 2) {
      view_function(expenses);
    } else if (user_input == 3) {
      total_expenses(expenses);
    } else if (user_input == 4) {
      print('thanks for coming bro Allah hafiz');
      break;
    } else {
      print('invalid input bhai input dobara  do .....');
    }
  }
}

//yeh add karane ka function
add_method(List<Map<String, dynamic>> expenses) {
  print('enter your expense name please....');
  String name = stdin.readLineSync()!;
  print('enter amount');
  num amount = num.parse(stdin.readLineSync()!);

  if (name.isNotEmpty && amount > 0) {
    expenses.add({'name': name, 'amount': amount});
  } else {
    print('invalid input');
  }
}

//yeh saare expense dekhane ka function
view_function(List<Map<String, dynamic>> expenses) {
  if (expenses.isEmpty) {
    print('abhi kharcha shoro nhi hoa bhai ');
  }
  for (var expense in expenses) {
    print('name : ${expense['name']} , amount :${expense['amount']}');
  }
}

//or ye sum karane ka function by fold method
total_expenses(List<Map<String, dynamic>> expenses) {
  double total = expenses.fold(0, (sum, expense) => sum + expense['amount']);
  if (total > 0) {
    print('here is your total expense   $total pkr');
    if (total > 2000) {
      print('bhai 2000 se upper jaa raha ha mene socha bata do :)');
    }
  } else {
    print('bhai kuch add to kar do');
    print('abhi kuch nhi ha');
  }
}
