import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_edit_getxbuilder/Constants/Styles/textstyles.dart';
import 'package:profile_edit_getxbuilder/Routes/routes.dart';
import 'package:profile_edit_getxbuilder/Services/Profile/profile_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final profileServices = Get.put(ProfileServices());
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Profile',
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
            color: Colors.grey.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(profileEdit);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Update Profile',
                        style: TextStyle(fontSize: 10, color: Colors.black87),
                      ),
                    ),
                  )
                ],
              ),

              //Fields
              Container(
                width: mediaQuery.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.7)),
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: kTitleTextStyle,
                    ),
                    GetX<ProfileServices>(
                      builder: (_) => Text(
                        '${profileServices.name}',
                      ),
                    ),
                    // Get.find<ProfileServices>().name.isEmpty
                    //     ? const Text(
                    //         '-',
                    //         style: kSubtitleTextStyle,
                    //       )
                    //     : Text(
                    //         '${Get.find<ProfileServices>().name}',
                    //         style: kSubtitleTextStyle,
                    //       ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Email',
                      style: kTitleTextStyle,
                    ),
                    // Get.find<ProfileServices>().name.isEmpty
                    //     ? const Text(
                    //         '-',
                    //         style: kSubtitleTextStyle,
                    //       )
                    //     : Text(
                    //         '${Get.find<ProfileServices>().email}',
                    //         style: kSubtitleTextStyle,
                    //       ),
                    GetX<ProfileServices>(
                      builder: (_) => Text(
                        '${profileServices.email}',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'City',
                      style: kTitleTextStyle,
                    ),
                    // Get.find<ProfileServices>().name.isEmpty
                    //     ? const Text(
                    //         '-',
                    //         style: kSubtitleTextStyle,
                    //       )
                    //     : Text(
                    //         '${Get.find<ProfileServices>().city}',
                    //         style: kSubtitleTextStyle,
                    //       ),
                    GetX<ProfileServices>(
                      builder: (_) => Text(
                        '${profileServices.city}',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'State',
                      style: kTitleTextStyle,
                    ),
                    // Get.find<ProfileServices>().name.isEmpty
                    //     ? const Text(
                    //         '-',
                    //         style: kSubtitleTextStyle,
                    //       )
                    //     : Text(
                    //         '${Get.find<ProfileServices>().state}',
                    //         style: kSubtitleTextStyle,
                    //       ),
                    GetX<ProfileServices>(
                      builder: (_) => Text(
                        '${profileServices.state}',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Country',
                      style: kTitleTextStyle,
                    ),
                    // Get.find<ProfileServices>().name.isEmpty
                    //     ? const Text(
                    //         '-',
                    //         style: kSubtitleTextStyle,
                    //       )
                    //     : Text(
                    //         '${Get.find<ProfileServices>().country}',
                    //         style: kSubtitleTextStyle,
                    //       ),
                    GetX<ProfileServices>(
                      builder: (_) => Text(
                        '${profileServices.country}',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Phone',
                      style: kTitleTextStyle,
                    ),
                    // Get.find<ProfileServices>().name.isEmpty
                    //     ? const Text(
                    //         '-',
                    //         style: kSubtitleTextStyle,
                    //       )
                    //     : Text(
                    //         '${Get.find<ProfileServices>().phone}',
                    //         style: kSubtitleTextStyle,
                    //       ),
                    GetX<ProfileServices>(
                      builder: (_) => Text(
                        '${profileServices.phone}',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Selected Country',
                      style: kTitleTextStyle,
                    ),
                    // Get.find<ProfileServices>().name.isEmpty
                    //     ? const Text(
                    //         '-',
                    //         style: kSubtitleTextStyle,
                    //       )
                    //     : Text(
                    //         '${Get.find<ProfileServices>().phone}',
                    //         style: kSubtitleTextStyle,
                    //       ),
                    GetX<ProfileServices>(
                      builder: (_) => Text(
                        '${profileServices.selectedCountry}',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
