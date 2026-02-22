import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/call_screen.dart';
import 'package:whatsapp_ui/chat_screen.dart';
import 'package:whatsapp_ui/status_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(NavigationController());
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 10),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text('New Group')),
              PopupMenuItem(value: 2, child: Text('New Community')),
              PopupMenuItem(value: 3, child: Text('Broadcast lists')),
              PopupMenuItem(value: 4, child: Text('Linked devices')),
              PopupMenuItem(value: 5, child: Text('Starred')),
              PopupMenuItem(value: 6, child: Text('Read all')),
              PopupMenuItem(value: 7, child: Text('Settings')),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),

      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: controller.changePage,


            destinations: [
              NavigationDestination(icon: Icon(Icons.chat), label: 'Chats'),
              NavigationDestination(icon: Icon(Icons.update_outlined), label: 'Updates'),
              NavigationDestination(icon: Icon(Icons.call_sharp), label: 'Calls'),
            ]),
      ),


      body: SafeArea(
        child: PageView(
          controller: controller.pageController,
          onPageChanged: controller.onPageChanged,
          children: controller.screens,
        ),
      ),
    );
  }
}

class NavigationController extends GetxController{
 final Rx<int> selectedIndex = 0.obs;
 final PageController pageController = PageController();

 final List<Widget> screens = [ChatScreen(),StatusScreen(),CallScreen()];

 void changePage(int index){
   selectedIndex.value = index;
   pageController.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.easeInOut);
 }
 void onPageChanged(int index){
   selectedIndex.value = index;
 }
}