import 'package:clinicbookingapp/views/reserve/reserve_step3.dart';
import 'package:clinicbookingapp/views/reserve/reverse_step1.dart';
import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';

class StepperReserve extends StatefulWidget {
  @override
  _StepperReserveState createState() => _StepperReserveState();
}

class _StepperReserveState extends State<StepperReserve> {
  String title = 'Đặt lịch';
  int _currentStep = 0;

  FAStepperType _stepperType = FAStepperType.horizontal;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        child: FAStepper(
          controlsBuilder: changeButtonName,
          steps: <FAStep>[
            FAStep(
              title: Text('Thời gian'),
              content: ReserveScreen(),
              isActive: _currentStep >= 0,
              state: _currentStep >= 0
                  ? FAStepstate.complete
                  : FAStepstate.disabled,
            ),
            FAStep(
              title: Text('Dịch vụ'),
              content: Column(
                children: [
                  Text('123'),
                ],
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 1
                  ? FAStepstate.complete
                  : FAStepstate.disabled,
            ),
            FAStep(
              title: Text('Thông tin'),
              content: InfomationScreen(),
              isActive: _currentStep >= 0,
              state: _currentStep >= 2
                  ? FAStepstate.complete
                  : FAStepstate.disabled,
            ),
          ],
          stepNumberColor: Colors.blueAccent,
          type: _stepperType,
          currentStep: this._currentStep,
          physics: ClampingScrollPhysics(),
          onStepTapped: (step) => tapped(step),
          onStepContinue: continued,
          onStepCancel: cancel,
        ),
      ),
    );
  }

  Widget changeButtonName(BuildContext context,
      {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _currentStep < 2
            ? TextButton(
                onPressed: onStepContinue,
                child: const Text(
                  'Tiếp tục',
                  style: TextStyle(fontSize: 15),
                ),
              )
            : SizedBox.shrink(),
        _currentStep > 0
            ? TextButton(
                onPressed: onStepCancel,
                child: const Text(
                  'Trở lại',
                  style: TextStyle(fontSize: 15),
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
