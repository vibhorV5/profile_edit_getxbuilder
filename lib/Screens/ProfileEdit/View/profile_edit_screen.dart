import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_edit_getxbuilder/Constants/Styles/textstyles.dart';
import 'package:profile_edit_getxbuilder/Routes/routes.dart';
import 'package:profile_edit_getxbuilder/Services/Profile/profile_services.dart';

class ProfileEditScreen extends GetView<ProfileServices> {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    // List<String> typeNeg = [
    //   "One",
    //   "Two",
    //   "Three",
    // ];

    // String dropdownValue = "One";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 35.0),
          child: Text(
            'Profile Edit Screen',
            style: TextStyle(color: Colors.black87),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 50),
                  child: Text(
                    'Update your profile',
                    style: kTitleTextStyle.copyWith(fontSize: 24),
                  ),
                ),

                //Form Fields
                TextFormField(
                  onSaved: (newValue) {
                    controller.name.value = newValue!;
                  },
                  validator: (value) {
                    return controller.normalFieldValidate(value!);
                  },
                  controller: controller.nameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        // width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    labelText: 'Name',
                    labelStyle: kTextStyle1.copyWith(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    controller.email.value = newValue!;
                  },
                  validator: (value) {
                    return controller.emailValidate(value!);
                  },
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        // width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: kTextStyle1.copyWith(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    controller.city.value = newValue!;
                  },
                  validator: (value) {
                    return controller.normalFieldValidate(value!);
                  },
                  controller: controller.cityController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        // width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    labelText: 'City',
                    labelStyle: kTextStyle1.copyWith(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    controller.state.value = newValue!;
                  },
                  validator: (value) {
                    return controller.normalFieldValidate(value!);
                  },
                  controller: controller.stateController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        // width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    labelText: 'State',
                    labelStyle: kTextStyle1.copyWith(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    controller.country.value = newValue!;
                  },
                  validator: (value) {
                    return controller.normalFieldValidate(value!);
                  },
                  controller: controller.countryController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        // width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    labelText: 'Country',
                    labelStyle: kTextStyle1.copyWith(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                TextFormField(
                  onSaved: (newValue) {
                    controller.phone.value = newValue!;
                  },
                  validator: (value) {
                    return controller.phoneValidate(value!);
                  },
                  controller: controller.phoneController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        // width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    labelText: 'Phone',
                    labelStyle: kTextStyle1.copyWith(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                //Make this dropdown
                DropdownButtonFormField(
                  validator: (value) {
                    return controller.selectedCountryValidate(value!);
                  },
                  onChanged: (newValue) {
                    controller.setSelected(newValue!);
                    // controller.selectedCountryValidate(newValue);
                  },
                  // onSaved: (newValue) {
                  //   controller.selectedCountryValidate(newValue!);
                  // },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        // width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    labelText: 'Selected Country',
                    labelStyle: kTextStyle1.copyWith(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  focusColor: Colors.white,
                  value: controller.selectedCountry.value == ""
                      ? null
                      : controller.selectedCountry.value,
                  style: const TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: controller.listType.map((selectedType) {
                    return DropdownMenuItem(
                      value: selectedType,
                      child: Text(
                        selectedType,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  }).toList(),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextButton(
                    onPressed: () async {
                      FocusScope.of(context).unfocus();
                      await Future.delayed(
                        const Duration(milliseconds: 200),
                        () {
                          debugPrint('Delayed execution done');
                        },
                      );
                      controller.saveDetails();

                      if (controller.formStatus.isTrue) {
                        Get.snackbar(
                          'Success',
                          'Profile details has been updated',
                          icon: const Icon(Icons.info, color: Colors.white),
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor:
                              Colors.green.shade800.withOpacity(0.5),
                          duration: const Duration(
                            milliseconds: 1500,
                          ),
                        );
                        await Future.delayed(
                          const Duration(seconds: 1),
                          () {
                            debugPrint('Delayed execution done');
                          },
                        );
                        Get.offAllNamed(home);
                      } else {
                        Get.snackbar(
                          'Failure',
                          'Please re-enter details',
                          icon: const Icon(Icons.info, color: Colors.white),
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.red.withOpacity(0.5),
                          duration: const Duration(
                            milliseconds: 1500,
                          ),
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 12),
                      child: Text(
                        'Save details',
                        style: kTextStyle1.copyWith(
                            color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
