# resume_app_daily_task



# 1. How to set status bar color throghout the app ?


* `By Utilizing the SystemChrome Class` :
The SystemChrome class is used to set the status bar color. This is done by using the setSystemUIOverlayStyle method, where we can specify the color and brightness of the status bar.

```bash
   Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.red));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return const Placeholder();
  }
}

```

