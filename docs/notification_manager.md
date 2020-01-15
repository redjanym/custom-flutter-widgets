# Notification Manager

This is a helper class to generate SnackBar notifications everywhere in the app's codebase without being limited to Scafold inherited widgets.

## How to use it?

1. Copy or download this file into your project.
2. Import this file wherever you need to use it.
3. Initiate the class on the main Scafold or wherever you use a Scafold widget.
4. Use the class wherever you need to display a SnackBar notification.

## Example

### 1- Initiate the service class

```dart
    NotificationManager.context = context; // the Scafold context
    NotificationManager.successBackgroundColor = Colors.black; // default value is black. Can optionally be changed
    NotificationManager.errorBackgroundColor = Colors.red; // default value is red. Can optionally be changed
```

### 2- Generate the success notification

```dart
     NotificationManager.generateNewSuccessNotification(
                              "This is a success notification.",
                              fast: false,
                              );
```

### 3- Generate the error notification

```dart
     NotificationManager.generateNewErrorNotification(
                              "This is an error notification.",
                              fast: false,
                              );
```

Both methods accept 2 parameters:

1. `message`, the first parameter which is required and accepts a String
2. `fast`, a boolean flag which decides whether the SnackBar should be closed fast(after 500ms) or slow(after 1000ms), `false` is by default.
