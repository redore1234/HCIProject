import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:clinicbookingapp/views/reserve/reserve_step2.dart';
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
              content: ServiceList(
                service: [
                  new Service(
                      "Bọc răng sứ",
                      Constants.IMAGE_FOLDER_REF + 'icon-boc-rang-su-1.png',
                      false,
                      '2.000.000 VND'),
                  new Service(
                      "Cấy ghép implant",
                      Constants.IMAGE_FOLDER_REF + 'trong-rang-implant.png',
                      false,
                      '11.750.000 VND'),
                  new Service(
                      "Niềng răng thẩm mỹ",
                      Constants.IMAGE_FOLDER_REF + 'nieng-rang-tham-my.png',
                      false,
                      '18.000.000'),
                  new Service(
                      "Mặt dán sứ Veneer",
                      Constants.IMAGE_FOLDER_REF + 'rang-su-veneer.png',
                      false,
                      '8.000.000 VND'),
                  new Service(
                      "Tẩy trắng răng",
                      Constants.IMAGE_FOLDER_REF + 'icon-tay-trang-rang-1.png',
                      false,
                      '200.000 VND'),
                  new Service(
                      "Nhổ răng khôn",
                      Constants.IMAGE_FOLDER_REF + 'icon-nho-rang-khon-1.png',
                      false,
                      '1.000.000 VND'),
                  new Service(
                      "Bệnh lý nha chu",
                      Constants.IMAGE_FOLDER_REF + 'icon-benh-ly-nha-chu.png',
                      false,
                      '700.000 VND'),
                  new Service(
                      "Điều trị tủy",
                      Constants.IMAGE_FOLDER_REF + 'dieu-tri-tuy.png',
                      false,
                      '1.500.000 VND'),
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _currentStep > 0
              ? TextButton(
                  onPressed: onStepCancel,
                  child: const Text(
                    'Trở lại',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              : SizedBox.shrink(),
          _currentStep < 2
              ? TextButton(
                  onPressed: onStepContinue,
                  child: const Text(
                    'Tiếp tục',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
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
