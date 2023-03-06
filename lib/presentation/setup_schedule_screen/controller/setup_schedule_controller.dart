import 'dart:js_util';

import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/setup_schedule_screen/models/setup_schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:final_2/data/classes_list.dart';
class SetupScheduleController extends GetxController {

  Rx<List<ClassesList>>classes=Rx<List<ClassesList>>([]);
  var selectedTime = TimeOfDay.now().obs;
  var selectedTime2 = TimeOfDay.now().obs;
  TextEditingController classnameTextEditingController = TextEditingController();
  TextEditingController subjectTextEditingController = TextEditingController();
  TextEditingController roomnoTextEditingController = TextEditingController();
  TextEditingController departmentTextEditingController = TextEditingController();

  List<bool> buttonStates = List.generate(7, (_) => false).obs;


  void toggleButton(int index) {
    buttonStates[index] = !buttonStates[index];
  }
  late ClassesList classesList;
  var itemCount = 0.obs;




  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onClose() {
    super.onClose();
    classnameTextEditingController.dispose();
    subjectTextEditingController.dispose();
    roomnoTextEditingController.dispose();
    departmentTextEditingController.dispose();}
  addClasses(String classname,String subject,String roomno,String department,var timeS,var TimeE, List<bool> days) {
  classesList= ClassesList(classname: classname, subject: subject, roomno: roomno, department: department, times: timeS,timee: TimeE, numbers: days );
  classes.value.add(classesList);
  itemCount.value = classes.value.length;
  classnameTextEditingController.clear();
  subjectTextEditingController.clear();
  roomnoTextEditingController.clear();
  departmentTextEditingController.clear();
  selectedTime = TimeOfDay.now().obs;
  selectedTime2 = TimeOfDay.now().obs;


  }
  removeClasses(int index) {
  classes.value.removeAt(index);
  itemCount.value = classes.value.length;

  }
  chooseTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
        context: Get.context!,
        initialTime: selectedTime.value,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        },
        initialEntryMode: TimePickerEntryMode.input,
        helpText: 'Select Departure Time',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorInvalidText: 'Provide valid time',
        hourLabelText: 'Select Hour',
        minuteLabelText: 'Select Minute');
    if (pickedTime != null && pickedTime != selectedTime.value) {
      selectedTime.value = pickedTime;
    }
  }

  chooseTime2() async {
    TimeOfDay? pickedTime = await showTimePicker(
        context: Get.context!,
        initialTime: selectedTime2.value,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child!);
        },
        initialEntryMode: TimePickerEntryMode.input,
        helpText: 'Select Departure Time',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorInvalidText: 'Provide valid time',
        hourLabelText: 'Select Hour',
        minuteLabelText: 'Select Minute');
    if (pickedTime != null && pickedTime != selectedTime2.value) {
      selectedTime2.value = pickedTime;
    }

  }


  }






