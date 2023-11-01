import 'package:salary_management/view/Screens/linker.dart';

customSnackbar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
      backgroundColor: Colors.blue, // Customize the background color
      padding: EdgeInsets.all(16), // Customize padding
    ),
  );
}
