# resume_app_daily_task


# 1. What is List ?

* In Dart, a list is an ordered collection of objects that is similar to an array. Lists are defined by storing elements in square brackets ([]) and separating them with commas (,). 

For example:-
 ```bash
 List list1 = [10, 15, 20, 25, 25] 
 ```

* `Predefined functions of list` :-

add() addAll() insert() insertAll()
remove() removeAt() removeLast() removeRange()

```bash
void main() {
  List<int> numbers = [1, 2, 3];
  numbers.add(4);
  numbers.remove(2);
  print(numbers.elementAt(1)); // Output: 3
  print(numbers.length); // Output: 3
}


```



# 2. What is Map ?

*  In Flutter and Dart, a map is a collection of data in key-value pairs.

`Generics`:

Generics in Dart provide a way to write reusable code that can work with different types. They allow you to define classes, functions, and interfaces that can operate on a variety of data types without sacrificing type safety. Generics are denoted by using angle brackets < > and a type parameter.


```bash
void main() {
  // Creating a Map
  Map<String, int> ages = {
    'Sanju': 30,
    'Yash': 19,
    'Dipesh': 18,
  };


}

```





# 3. How to set status bar color throughout the App ?


* `By Utilizing the SystemChrome Class` :
The SystemChrome class is used to set the status bar color. This is done by using the setSystemUIOverlayStyle method, where we can specify the color and brightness of the status bar.

```bash
   Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.red));
    return const Placeholder();
  }
}

```
# 4. How to set Device orientation throughout the App ?


* `By Utilizing the SystemChrome Class` :


```bash
   Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
     return const Placeholder();
  }
}

```
<h3 align = "center"> 1. Gmail Drawer </h3>

<p align = "center">
<img src= "https://github.com/Yash-978/resume_app_daily_task/assets/147479013/0d504eac-a099-4d3e-806e-0137fd6a21b3" width=35%
height=22% >
</p>


<h3 align = "center"> 2. Entry Page </h3>

<p align = "center">
<img src= "https://github.com/Yash-978/resume_app_daily_task/assets/147479013/b7672a1f-559b-4820-ba9a-17ec3e618d59" width=35%
height=22% >
</p>

<h3 align = "center"> 3. Login Page </h3>

<p align = "center">
<img src= "https://github.com/Yash-978/resume_app_daily_task/assets/147479013/4c014893-c6f7-4e47-878e-4b1839e7dd79" width=35%
height=22% >
</p>



