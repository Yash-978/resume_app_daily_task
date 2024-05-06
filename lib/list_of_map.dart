import 'dart:io';
void main()
{
  Map userInfo={

  'name':'',
  'surname':'',
  'email':'',
  'contacts':'',
  'age':'19',
  'address':'',
  'city':'',
  'state':'',
  'gender':'',
  'bloodgroup':'',



  };
  stdout.write('Enter Your Name :- ');
  userInfo.update('name',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your Surname :- ');
  userInfo.update('surname',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your Email :- ');
  userInfo.update('email',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your Age :- ');
  userInfo.update('age',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your Gender :- ');
  userInfo.update('gender',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your BloodGroup :- ');
  userInfo.update('bloodgroup',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your Contact :- ');
  userInfo.update('contacts',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your Address :- ');
  userInfo.update('address',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your City :- ');
  userInfo.update('city',(value)=>stdin.readLineSync()!);

  stdout.write('Enter Your State :- ');
  userInfo.update('state',(value)=>stdin.readLineSync()!);
  
  print(userInfo);

}