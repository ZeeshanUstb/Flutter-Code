import 'package:salary_management/view/Screens/linker.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Get.find<SplashController>();
    Get.find<SplashController>();
    return Scaffold(
      body: Container(
        width: double.infinity,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(
        //         'images/images.jpg'), // Replace with your image asset
        //     fit: BoxFit.cover, // Adjust this to control image sizing
        //   ),
        // ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/Capture.PNG'),
            ),
            SizedBox(
              height: 30,
            ),
            // Text(
            //   'Salary Management System',
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
          ],
        ),
      ),
    );
  }
}
