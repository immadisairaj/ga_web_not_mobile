# ga_web_not_mobile

A repo to show an example of using the js library when compiling to mobile app.

As js library is not used in mobile applications. This example code does some magic to not import and not use the method.

Note: All files are available in `lib/` and this is just an example repo that doesn't follow any architecture.

## Steps I followed:

1. Create an abstract class called `GoogleAnalytics` with a function called `sendNewRouteData` (file `ga.dart`).

Note: the import and factory method is done later

2. Create a impl of the `GoogleAnalytics` in file `ga_general.dart`.

Here, we are just generalizing and throwing errors for non applicable platforms

3. Create a impl of the `GoogleAnalytics` in file `ga_web.dart` just for the sake of web platform.

Here, we use the actual impl of js library

4. Now, we add a method `getGA()` in both `ga_general.dart` and `ga_web.dart`.

This helps us get the GA directly in the abstract class.

5. Import based on conditions in `ga.dart` and add the factory method for constructor to get the impl class.

This automatically changes based on available library.

6. Usage:

```dart
GoogleAnalytics().sendNewRouteData('something');
```

Using only this will give an error on mobile. So, you could add `kIsWeb` and use.

Check out this usage in `main.dart`.
