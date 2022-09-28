import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileServices extends GetxService {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool formStatus = false.obs;

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController cityController;
  late TextEditingController stateController;
  late TextEditingController countryController;
  late TextEditingController phoneController;

  RxString name = ''.obs;
  RxString email = ''.obs;
  RxString city = ''.obs;
  RxString state = ''.obs;
  RxString country = ''.obs;
  RxString phone = ''.obs;

  RxString selectedCountry = ''.obs;

  final listType = [
    'India',
    'USA',
    'Sri Lanka',
  ];

  void setSelected(String value) {
    selectedCountry.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    cityController = TextEditingController();
    stateController = TextEditingController();
    countryController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    cityController.dispose();
    stateController.dispose();
    countryController.dispose();
    phoneController.dispose();
  }

  String? emailValidate(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Enter a valid email id';
    } else {
      return null;
    }
  }

  String? normalFieldValidate(String value) {
    if (value == '') {
      return 'Please enter a valid detail';
    } else {
      return null;
    }
  }

  String? phoneValidate(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Enter a valid phone number';
    } else {
      return null;
    }
  }

  String? selectedCountryValidate(String value) {
    if (value == '') {
      return 'Please select a country';
    } else {
      return null;
    }
  }

  void saveDetails() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      formStatus = false.obs;
      return;
    } else {
      formKey.currentState!.save();
      formStatus = true.obs;
    }
  }
}
