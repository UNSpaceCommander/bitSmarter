import 'package:flutter/material.dart';
import '../bitsmarter_reusablewidgets.dart';
import '../servicesPage/layouts.dart';
import '../servicesPage/tier2.dart';

class MyModel {
  const MyModel({this.value = 0});

  final int value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    final MyModel otherModel = other;
    return otherModel.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}





class _ModelBindingScope<T> extends InheritedWidget {
  const _ModelBindingScope({Key key, this.modelBindingState, Widget child})
      : super(key: key, child: child);

  final _ModelBindingState<T> modelBindingState;

  @override
  bool updateShouldNotify(_ModelBindingScope oldWidget) => true;
}






class ModelBinding<T> extends StatefulWidget {
  ModelBinding({
    Key key,
    @required this.initialModel,
    this.child,
  })  : assert(initialModel != null),
        super(key: key);

  final T initialModel;
  final Widget child;

  _ModelBindingState<T> createState() => _ModelBindingState<T>();

  static Type _typeOf<T>() =>
      T; // https://github.com/dart-lang/sdk/issues/33297

  static T of<T>(BuildContext context) {
    final Type scopeType = _typeOf<_ModelBindingScope<T>>();
    final _ModelBindingScope<T> scope =
        context.inheritFromWidgetOfExactType(scopeType);
    return scope.modelBindingState.currentModel;
  }

  static void update<T>(BuildContext context, T newModel) {
    final Type scopeType = _typeOf<_ModelBindingScope<T>>();
    final _ModelBindingScope<dynamic> scope =
        context.inheritFromWidgetOfExactType(scopeType);
    scope.modelBindingState.updateModel(newModel);
  }
}





class _ModelBindingState<T> extends State<ModelBinding<T>> {
  T currentModel;

  @override
  void initState() {
    super.initState();
    currentModel = widget.initialModel;
  }

  void updateModel(T newModel) {
    if (newModel != currentModel) {
      setState(() {
        currentModel = newModel;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _ModelBindingScope<T>(
      modelBindingState: this,
      child: widget.child,
    );
  }
}




class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BitSmarter_ReusableWidgets.getAppBar(context),
      drawer: BitSmarter_ReusableWidgets.getDrawer(context),
      body: layoutToDisplay(context)
      //Layouts().layoutToDisplay(context),
    );
  }
}
