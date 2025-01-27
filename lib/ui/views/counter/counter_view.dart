import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: RawMaterialButton(
          onPressed: viewModel.runStartupLogic,
          child: const Text('alabama'),
        ),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();

  //       @override
  // void onViewModelReady(CounterViewModel viewModel) => SchedulerBinding.instance
  //     .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
