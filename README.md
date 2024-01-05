# quick_transition

A new Flutter plugin for quick page transition.

This package you will get page transition
<br/><br/>

[![flutter platform](https://img.shields.io/badge/Platform-Flutter-yellow.svg)](https://flutter.io)
[![pub package](https://img.shields.io/pub/v/page_transition.svg)](https://pub.dartlang.org/packages/page_transition)
[![BSD-2-Clause](https://img.shields.io/badge/BSD-2-Clause.svg?style=flat-square)](https://opensource.org/licenses/)

## Demo
![ezgif com-optimize](https://github.com/kabirhossainbd/quick_transition/assets/58218208/fb326c75-9470-4f7f-9e6a-d7fc54d966a7)

## Usage

It is really easy to use!
You should ensure that you add the `quick_transition` as a dependency in your flutter project.

```yaml
dependencies:
  quick_transition: "^0.0.1"
```

Than you can use it with below examples.

```dart
 Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.leftToRight,child: const NewScreen()));

 Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.rightToLeft,child: const NewScreen()));

 Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.zoom,child: const NewScreen()));

 Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.topToBottom,child: const NewScreen()));

 Navigator.push(context,QuickTransitionRoute(mode: TransitionMode.bottomToTop,child: const NewScreen()));

```

## Transition Mode

- zoom
- rightToLeft
- leftToRight
- topToBottom
- bottomToTop

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.



## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

